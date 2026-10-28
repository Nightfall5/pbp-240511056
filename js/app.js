/**
 * Pemrograman Berbasis Platform (PBP) — Modul Login Neo-Brutalist
 * Frontend Script: Form Validation, Password Toggle, & UI Interactions
 */

document.addEventListener('DOMContentLoaded', () => {
  // --- Element Selectors ---
  const form = document.getElementById('login-form');
  const usernameInput = document.getElementById('username');
  const usernameError = document.getElementById('username-error');
  const usernameErrorText = document.getElementById('username-error-text');

  const passwordInput = document.getElementById('password');
  const passwordError = document.getElementById('password-error');
  const passwordErrorText = document.getElementById('password-error-text');
  const togglePasswordBtn = document.getElementById('toggle-password-btn');
  const togglePasswordIcon = document.getElementById('toggle-password-icon');

  const formFeedback = document.getElementById('form-feedback');
  const feedbackTitle = document.getElementById('feedback-title');
  const feedbackMessage = document.getElementById('feedback-message');
  const feedbackDot = document.getElementById('feedback-dot');

  const btnSsoGoogle = document.getElementById('btn-sso-google');
  const btnSsoGithub = document.getElementById('btn-sso-github');

  // --- Password Toggle Functionality ---
  if (togglePasswordBtn && passwordInput) {
    togglePasswordBtn.addEventListener('click', () => {
      const isPassword = passwordInput.getAttribute('type') === 'password';
      const newType = isPassword ? 'text' : 'password';
      passwordInput.setAttribute('type', newType);

      if (togglePasswordIcon) {
        togglePasswordIcon.textContent = isPassword ? 'visibility_off' : 'visibility';
      }

      const labelText = isPassword ? 'Sembunyikan kata sandi' : 'Tampilkan kata sandi';
      togglePasswordBtn.setAttribute('aria-label', labelText);
      togglePasswordBtn.setAttribute('title', labelText);
      togglePasswordBtn.setAttribute('aria-pressed', isPassword ? 'true' : 'false');
    });
  }

  // --- Validation Helpers ---
  function validateUsername(value) {
    const trimmed = value.trim();
    if (!trimmed) {
      return { valid: false, message: 'NIM atau Email wajib diisi.' };
    }
    if (trimmed.length < 3) {
      return { valid: false, message: 'NIM atau Email minimal 3 karakter.' };
    }
    return { valid: true, message: '' };
  }

  function validatePassword(value) {
    const trimmed = value.trim();
    if (!trimmed) {
      return { valid: false, message: 'Kata sandi wajib diisi.' };
    }
    if (trimmed.length < 8) {
      return { valid: false, message: 'Kata sandi wajib diisi minimal 8 karakter.' };
    }
    return { valid: true, message: '' };
  }

  function setFieldError(input, errorContainer, errorTextEl, message) {
    input.classList.add('has-error');
    input.setAttribute('aria-invalid', 'true');
    if (errorContainer && errorTextEl) {
      errorTextEl.textContent = message;
      errorContainer.classList.remove('hidden');
    }
  }

  function clearFieldError(input, errorContainer) {
    input.classList.remove('has-error');
    input.removeAttribute('aria-invalid');
    if (errorContainer) {
      errorContainer.classList.add('hidden');
    }
  }

  function displayFeedback(title, message, type = 'success') {
    if (!formFeedback) return;

    // Reset feedback styles
    formFeedback.className = 'mb-5 p-4 border-4 border-on-background shadow-[4px_4px_0_0_#1b1c15] transition-all block';
    
    if (type === 'success') {
      formFeedback.classList.add('bg-tertiary-container', 'text-on-tertiary-container');
      if (feedbackDot) feedbackDot.className = 'w-3 h-3 bg-tertiary border border-on-background inline-block flex-shrink-0';
    } else if (type === 'info') {
      formFeedback.classList.add('bg-secondary-container', 'text-on-background');
      if (feedbackDot) feedbackDot.className = 'w-3 h-3 bg-secondary border border-on-background inline-block flex-shrink-0';
    } else if (type === 'warning') {
      formFeedback.classList.add('bg-error-container', 'text-on-error-container');
      if (feedbackDot) feedbackDot.className = 'w-3 h-3 bg-error border border-on-background inline-block flex-shrink-0';
    }

    if (feedbackTitle) feedbackTitle.textContent = title;
    if (feedbackMessage) feedbackMessage.textContent = message;

    formFeedback.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
  }

  // --- Real-time input error removal ---
  if (usernameInput) {
    usernameInput.addEventListener('input', () => {
      if (usernameInput.classList.contains('has-error')) {
        const check = validateUsername(usernameInput.value);
        if (check.valid) {
          clearFieldError(usernameInput, usernameError);
        }
      }
    });
  }

  if (passwordInput) {
    passwordInput.addEventListener('input', () => {
      if (passwordInput.classList.contains('has-error')) {
        const check = validatePassword(passwordInput.value);
        if (check.valid) {
          clearFieldError(passwordInput, passwordError);
        }
      }
    });
  }

  // --- Form Submit Handler ---
  if (form) {
    form.addEventListener('submit', (e) => {
      e.preventDefault();

      const userVal = usernameInput ? usernameInput.value : '';
      const passVal = passwordInput ? passwordInput.value : '';

      const userCheck = validateUsername(userVal);
      const passCheck = validatePassword(passVal);

      let hasError = false;

      if (!userCheck.valid) {
        setFieldError(usernameInput, usernameError, usernameErrorText, userCheck.message);
        hasError = true;
      } else {
        clearFieldError(usernameInput, usernameError);
      }

      if (!passCheck.valid) {
        setFieldError(passwordInput, passwordError, passwordErrorText, passCheck.message);
        hasError = true;
      } else {
        clearFieldError(passwordInput, passwordError);
      }

      if (hasError) {
        if (!userCheck.valid && usernameInput) {
          usernameInput.focus();
        } else if (!passCheck.valid && passwordInput) {
          passwordInput.focus();
        }
        return;
      }

      // Valid form in client-side demonstration mode
      // Rule strictly prohibits claiming login success or faking backend auth.
      displayFeedback(
        'VALIDASI FORMULIR BERHASIL (SISI KLIEN)',
        'Input format NIM/Email dan kata sandi telah memenuhi kriteria validasi frontend. Halaman ini adalah modul perancangan antarmuka praktikum PBP dan tidak mengirimkan kredensial ke backend autentikasi eksternal.',
        'success'
      );
    });
  }

  // --- SSO Mockup Notification Handlers ---
  function handleSsoMockup(provider) {
    displayFeedback(
      `INFORMASI SSO: ${provider.toUpperCase()}`,
      `Opsi masuk via ${provider} merupakan komponen visual desain mockup. Sesuai batasan tugas frontend, repositori ini belum terhubung ke server autentikasi OAuth eksternal.`,
      'info'
    );
  }

  if (btnSsoGoogle) {
    btnSsoGoogle.addEventListener('click', () => handleSsoMockup('Google'));
  }

  if (btnSsoGithub) {
    btnSsoGithub.addEventListener('click', () => handleSsoMockup('GitHub'));
  }
});
