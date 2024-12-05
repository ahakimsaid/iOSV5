
<html>
<body>
<p><img alt="alt tag" src="../res/ca_logo.png" /></p>
<h1 id="serversides-implementation-guide">ServerSide's Implementation Guide</h1>
<p><strong>iOS</strong></p>
<p>Last update : <em>05/12/2024</em><br />
Release version : <em>5.4.4</em></p>
<p><div id="end_first_page" /></p>

<div class="toc">
<ul>
<li><a href="#serversides-implementation-guide">ServerSide's Implementation Guide</a></li>
<li><a href="#introduction">Introduction</a><ul>
<li><a href="#main-technical-specifications">Main Technical Specifications</a></li>
<li><a href="#event">Event</a></li>
<li><a href="#commanders-acts-tcevent-payloads-data">Commanders Act's TCEvent payloads Data</a></li>
<li><a href="#executing-an-event">Executing an event</a></li>
<li><a href="#custom-events">Custom events</a></li>
<li><a href="#consent">Consent</a></li>
</ul>
</li>
<li><a href="#troubleshooting">Troubleshooting</a><ul>
<li><a href="#testing">Testing</a></li>
<li><a href="#common-errors">Common errors</a></li>
</ul>
</li>
<li><a href="#support-and-contacts">Support and contacts</a></li>
</ul>
</div>
<h1 id="introduction">Introduction</h1>
<p>Commanders Act enables marketers to easily add, edit, update, and deactivate tags on web pages, videos and mobile applications with little-to-no support from IT departments.</p>
<p>Instead of implementing several SDK's in the application, Commanders Act for mobile provides clients with a single module which sends data to our servers which then create and send information to your partners.</p>
<p>Thanks to remote configuration tools, it is also possible to modify the configuration without having to resubmit your application.</p>
<p>The purpose of this document is to explain how to add the ServerSide module into your application.</p>
<h2 id="main-technical-specifications">Main Technical Specifications</h2>
<ul>
<li>Fully threaded and asynchronous.</li>
<li>Offline mode (the hits are stored in the phone to be replayed when is convenient)</li>
<li>Very low CPU and memory usage.</li>
<li>Information collected and sent automatically while respecting GDPR.</li>
<li>Background mode, in the case you need to send data while the application is in background.</li>
</ul>
<h2 id="event">Event</h2>
<p>An event represent something happening inside your application. For example, we have "add to cart" or "login" events.
Inside the library they are represented each by a specific class which in turn provide you with information needed for this event to be used by your solutions.</p>
<p>For example, we know that for a "view cart" event, you will have to provide a list of the items inside the cart for the event to be valid.
We also add "value" and "currency" that are generally used by solutions for this event that can be filled inside the class.</p>
<p>Your company alongside our consulting team will usually define step by step what events the want the application to send and what parameters are needed for the solutions which will in turn treat those events.</p>
<p>You should be provided with a document explaining all events you need to implement inside your application and when they should be sent.</p>
<p>The event and the information we gather independently will create a hit to our servers with a JSON payload.</p>
<h2 id="commanders-acts-tcevent-payloads-data">Commanders Act's TCEvent payloads Data</h2>
<p>Our TCEvents payloads consist of various sections organized within a JSON payload sent to our CommandersAct servers once you call the <code>execute</code> function.
Each section has its specific behaviour. Refer to the provided scheme for insights into each section, guidance on manipulation, changing values, and understanding intended behavior.</p>
<p><img alt="alt tag" src="../res/TCEvent.png" /></p>
<p><img alt="alt tag" src="../res/warning.png" />
All events and their payloads are detailed here with code examples: <a href="https://doc.commandersact.com/developers/tracking/events-reference">events-reference</a></p>
<p>You will also find information about what you can add inside the TCUser which is sent with every hit.
Be aware that some data inside TCUser require consent from the user te be read and used.</p>
<p><img alt="alt tag" src="../res/warning.png" />
You can also check this page to see the link between the event names and the SDK's Class names and all information inside the payload here:
<a href="https://community.commandersact.com/platform-x/developers/tracking/about-events/mobile-sdk-event-specificity">mobile-sdk-event-specificity</a></p>
<h2 id="executing-an-event">Executing an event</h2>
<p>When you call the sendData method, a hit will be packaged and sent to Commanders Act's server.</p>
<p><img alt="alt tag" src="../res/server_side_module_scheme.png" /></p>
<h2 id="custom-events">Custom events</h2>
<p>In some case, the classic events might not suit your needs, in this case you can build complete custom events.
It is important to name them properly as this will be the base of forwarding them to your destinations.</p>
<h2 id="consent">Consent</h2>
<p>To manage the privacy of the user's data you can use our Consent product, another product or nothing at all.</p>
<p>By default, the ServerSide module will try to see if you have added our Privacy module. If so, it will put itself into a waiting for consent mode.
In this mode, it will record all hits but wait to consent information to either send everything or delete all waiting hits.</p>
<p>If you don't use our Consent module, the ServerSide's will be enabled by default.</p>
<p>If you want to change this behaviour, we added a way to initialise the ServerSide module with additional information about the behaviour.
We have 3 behaviours:</p>
<pre><code>- PB_DEFAULT_BEHAVIOUR which is the one described just before
- PB_ALWAYS_ENABLED which forces the ServerSide's module to always send information. This is used when you have tags that don't require consent.
- PB_DISABLED_BY_DEFAULT which forces the ServerSide's module to disabled. It won't record hits before consent is given and you won't have any up by default time when using tagging the app loading screens. This is used when you're not using our Consent module.
</code></pre>
<p>Consent will then be forwarded inside the TCUser. For more information, please check documentation about the <a href="../TCConsent/README.md">Consent module</a>. </p>
<h1 id="troubleshooting">Troubleshooting</h1>
<p>The ServerSide also offers methods to help you with the Quality Assessment of the implementation.</p>
<h2 id="testing">Testing</h2>
<p>There are four ways to verify that the module executes the tags in your application:</p>
<ul>
<li>By reading the debug messages in the console.</li>
<li>To check the interfaces inside the platform.</li>
<li>By going to your vendor's platform and check that the hits are displayed and that the data is correct. Please be aware that hits may not display immediately in the vendor account. This delay differs widely between vendors and may also vary for the type of hit under the same vendor.</li>
<li>You can also use a network monitor like Wireshark or Charles to check directly what is being sent on the wire to your vendors.</li>
</ul>
<h2 id="common-errors">Common errors</h2>
<p><img alt="alt tag" src="../res/warning.png" /></p>
<blockquote>
<ul>
<li>Make sure you have the latest version.</li>
<li>Enable the debug logs if you have any doubt.</li>
<li>Check if TCServerSide is called when you think it should be. You should see it in the console logs or inside the monitoring interface.</li>
<li>Make sure a second time that you have the latest version. (this really is the most common issue)</li>
<li>Check all your IDs</li>
</ul>
</blockquote>
<h1 id="support-and-contacts">Support and contacts</h1>
<p><img alt="alt tag" src="../res/ca_logo.png" /></p>
<hr />
<p><strong>Support</strong>
<em>support@commandersact.com</em></p>
<p>http://www.commandersact.com</p>
<hr />
<p>This documentation was generated on 05/12/2024 16:17:17</p>
</body>
</html>