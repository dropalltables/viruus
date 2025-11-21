+++
title = "contact me"
+++

## contact me

<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>

<form action="https://system.viruus.zip/contact" method="POST" target="hidden_iframe">
  <input type="text" name="name" placeholder="your name" required>
  <input type="email" name="email" placeholder="your@email.com" required>
  <textarea name="message" placeholder="your message" rows="4" required></textarea>
  <div class="cf-turnstile" data-sitekey="0x4AAAAAACCIH6LE-pwfc-u6"></div>
  <button type="submit">send message</button>
</form>
<iframe name="hidden_iframe" style="display:none"></iframe>

ps: this form uses javascript for cloudflare turnstile spam protection.