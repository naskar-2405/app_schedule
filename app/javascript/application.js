// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const passwordField = document.getElementById('password_field');
const showPasswordCheckbox = document.getElementById('show_password');

showPasswordCheckbox.addEventListener('change', () => {
  passwordField.type = showPasswordCheckbox.checked ? 'text' : 'password';
});