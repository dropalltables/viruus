+++
title = "contact me"
+++

## contact me

<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>

for some reason a lot of people [have](/images/contact/belarus.png) [been](/images/contact/hungary.png) [sending](/images/contact/latvia.png) [me](/images/contact/south-africa.png) [requests](/images/contact/unknown.png) for prices. i do not know for what, or why. all of the people have one word names, ending in feeft. to all the feefts: **please stop.** im begging you.

<form action="https://system.viruus.zip/contact" method="POST" target="hidden_iframe">
  <input type="text" name="name" placeholder="your name" required>
  <input type="email" name="email" placeholder="your@email.com" required>
  <textarea name="message" placeholder="your message" rows="4" required></textarea>
  <div class="cf-turnstile" data-sitekey="0x4AAAAAACCIH6LE-pwfc-u6"></div>
  <button type="submit" id="contact-submit" disabled>send message</button>
</form>

<script>
document.getElementById('contact-submit').disabled = false;
</script>
<iframe name="hidden_iframe" style="display:none"></iframe>
<br>
<noscript>
<strong>this contact form requires javascript for cloudflare turnstile spam protection.</strong> sorry :(
</noscript>