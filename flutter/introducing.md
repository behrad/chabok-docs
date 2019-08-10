---
id: introducing
title: معرفی چابک
layout: flutter
permalink: flutter/introducing.html
---

چابک یک **پلتفرم موبایل مارکتینگ** برای اجرای یکپارچه تمام فعالیت‌های بازاریابی اپلیکیشن‌های موبایل و وب است. چشم انداز ما توسعه یک زیرساخت بومی ارزشمند برای مرتفع کردن نیاز‌های امروز کسب و کار‌های آنلاین و اپلیکیشن‌هایشان می‌باشد. چابک به شما کمک می‌کند **کاربران با کیفیتی** جذب کنید، **ارتباط هدفمندی** با آن‌ها بسازید و **رفتار و بازخورد** آن‌ها را یاد بگیرید تا بهترین تصمیم‌ها را برای محصول خود بگیرید.

پلتفرم چابک در حوزه‌های [اتریبیوشن](/cordova/introducing.html#سرویس-اتریبیوشن-attribution)، [زیرساخت آنی](/cordova/introducing.html#سرویس-بکند-آنی-realtime-backend-service)، [تعاملات درون‌برنامه‌ای](/cordova/introducing.html#ارتباط-مستقل-از-کانال-omni-channel-communication)، [اتوماسیون بازاریابی موبایل](/cordova/introducing.html#اتوماسیون-بازاریابی-موبایل-mobile-marketing-automation) و [آنالیتیکس](/cordova/introducing.html#آنالیتیکس-موبایل-و-وب-mobile--web-analytics) می‌تواند برای شما مفید باشد.

<br>

### سرویس اتریبیوشن (Attribution)

ترکر چابک ابزاری برای **اندازه‌گیری کیفیت کمپین‌های نصب اپلیکیشن** است. با استفاده از این ترکر، کلیک‌ و نصب‌های کمپین شما رصد می‌شوند. پس از آن با توجه به شناسایی شدن کاربر جذب شده می‌توانید عملکرد و کیفیت او را ارزیابی کنید. در نهایت شما می‌توانید کمپین‌های نصب خود را با توجه به خروجی آن‌ها تحلیل کنید و برای افزایش بازدهی آن‌ها اقدام کنید. 

قابلیت‌های ترکر چابک عبارتند از:

- **آمار لحظه‌ای (Realtime Data)**: از لحظه‌ای که کمپین شما اجرا می‌شود، آمار لحظه‌ای کمپین در پنل چابک قابل مشاهده است.

- **اتریبیوشن کاربر-محور (User-based Attribution)**: تمام آمار‌ها و فعالیت‌ها بر اساس کاربر محاسبه و اجرا می‌شود و نه بر اساس دستگاه.

- **CPI مبتنی بر کاربر**: در کمپین‌هایی که با مدل ‌CPI (هزینه براساس نصب) اجرا می‌کنید، شمارش تعداد نصب بر اساس تعداد کاربر یکتا انجام می‌شود.

- **CPA پیشرفته**: در کمپین‌هایی که با مدل CPA (هزینه بر اساس یک رویداد) اجرا می‌کنید، شمارش تعداد نصب موفق بر اساس عملکرد کاربر انجام می‌شود.

- **مکانیزم جلوگیری از تقلب (Fraud Prevention)**: کلیک و نصب‌های غیر واقعی به طور هوشمند رد می شوند.

- **لینک‌ عمقی (Deeplink)**: کمپین‌های شما می‌توانند کاربران را به صفحات داخلی اپلیکیشن هدایت کنند.

- **آنالیتیکس (Analytics)**: تمام داده‌های کاربردی یکجا و به صورت آنی به نمایش گذاشته می‌شوند.

<div style="text-align: center ;"><img src="https://raw.githubusercontent.com/chabokpush/chabok-assets/master/chabok-docs/attribution-introducing.svg?sanitize=true" class="img-fluid" style="
    height: 260px;
"></div> 

<br>

### سرویس بکند آنی (Realtime Backend Service)

پلتفرم چابک روی یک زیرساخت بومی توسعه داده شده است که با مدل **رویداد‌گرا** به شما کمک می‌کند هر داده‌ای را بین کلاینت‌ها و سرور‌های خود **در لحظه** جا‌ به‌‌ جا کنید بدون اینکه نگران رشد کاربران یا حجم استفاده خود باشید. از طرفی درگیر نشدن تیم شما با پیچیدگی‌های بکند و زیرساخت نرم افزاری لازم برای این خدمات، تمرکز تیم فنی را روی مشکلات خود اپلیکیشن و کسب و کار شما نگه می‌دارد و در عمل محصول بهتری به کاربر ارائه می‌شود.

علاوه بر این که شما می‌توانید از این زیرساخت برای هر خلاقیت یا نیازی استفاده کنید، خود چابک یک سری امکانات پایه را روی همین بستر فراهم کرده که شامل موارد زیر می‌شود:

- **صندوق پیام کاربر** (مدیریت صف و لیست پیام‌ها)

- **پیام‌ درون‌برنامه‌ای انگیزشی** (مستقل از سرویس نوتیفکیشن پلتفرم‌ها)

- **خدمات پیام‌رسانی متنی** (پیام‌های خصوصی و عمومی، چت آنلاین و آفلاین، کامنت)

- **خدمات مبتنی بر مکان** (رصد یابی مکانی، جستجوی کاربران نزدیک و …)


<div style="text-align: center;"><img src="https://raw.githubusercontent.com/chabokpush/chabok-assets/master/chabok-docs/realtime-backend-service.svg?sanitize=true" /></div> 

<br>

### ارتباط مستقل از کانال (Omni-Channel Communication)

معماری چابک بر اساس **ارتباط شخصی و منحصر به فرد** با هر کاربر شکل گرفته است و پلتفرم هر کاربر را با یک شناسه و **مستقل از دستگاه‌ها، گوشی‌ها یا مرورگر‌های مورد استفاده او** مدیریت می‌کند. از طرفی به عنوان یک پلتفرم کامل که درگاه‌‌های ارتباطی **پوش، وب پوش، پیامک و ایمیل** را پشتیبانی می‌کند، شناخته می‌شود. این شاید یکی از مهم ترین ویژگی‌های چابک می‌باشد که دست کسب و کار شما را برای لحظه‌های مختلف باز می‌گذارد تا با هر کاربری به فراخور کانال مورد استفاده او و شرایط خاصش ارتباط بگیرید.

<div style="text-align: center;"><img src="http://uupload.ir/files/qxf_disactive1.1281e083.png
" /></div>


#### گروه‌بندی کاربران و هدفمندی محتوا (Segmentation & Targeted Content)

محتوای پیام‌های شما در چابک می‌تواند **شخصی‌سازی شده** باشد تا حس بهتری را برای کاربر ایجاد کند. از طرفی ارسال محتوای مناسب برای هر گروهی از کاربران، اثر بخشی بازخورد و نرخ تبدیل کاربران شما را بالا می‌برد. برای همین استفاده از یک **موتور گروه‌بندی دقیق و کارآمد** که به تیم بازاریابی شما انعطاف و قدرت بالایی برای دسترسی به هر نوع از کاربرانتان را بدهد، یک نیاز تعیین کننده است.

پلتفرم چابک برای همین یک **مکانیزم پیشرفته گروه‌بندی** در اختیار شما قرار می‌دهد که با آن بتوانید به سادگی گروه‌های مختلف کاربرانتان را شناسایی کنید و به آن‌ها دسترسی داشته باشید. شما حتی می‌توانید بر اساس **رویداد‌هایی** که خودتان در هنگام استفاده کاربر از اپلیکیشن رد گذاری می‌کنید، کاربران را گروه‌بندی کنید.

در نهایت انواع **سیاست‌های تحویل پیام** در چابک به شما کمک می‌کند تا ریتم‌های متنوعی از ارسال محتوا را تجربه کنید و به فراخور هر شرایطی محتوای خود را در زمان مناسب به کاربر برسانید و نرخ تبدیل بالاتری تجربه کنید.

<div style="text-align: center;"><img src="http://uupload.ir/files/uas_disactive2.png
" /></div>

<br>

### اتوماسیون بازاریابی موبایل (Mobile Marketing Automation) 

در اکثر کسب و کار‌های آنلاین تیم‌ بازاریابی اپلیکیشن، ارتباط نزدیکی با تیم فنی دارند و به طور مستمر درخواست‌های خود را مثل تحلیل رفتار کاربران، پرس و جو‌های گروه‌بندی کاربران، ارسال انواع محتوا در شرایط مختلف و … را به سبد کارهای تیم فنی اضافه می‌کنند. در این مدل علاوه بر اینکه تیم‌ها پیچیدگی‌ها و کارایی پایین تری را تجربه می‌کنند، کیفیت و انعطاف برای درخواست‌های تیم بازاریابی نیز کاهش پیدا می‌کند. از این رو، پلتفرم چابک تمرکز خود را روی قابلیت‌هایی گذاشته است که به **خودکار‌سازی روال‌های بازاریابی موبایل** کمک می‌کند تا تیم بازاریابی موبایل بتواند با راندمانی بالاتر فعالیت‌های خود را پیش ببرد. به این شکل سربار ارتباطی بین تیم‌ها و خطای انسانی به حداقل رسیده و پلتفرم به کسب و کار شما کمک می‌‌کند تا بیشترین انعطاف، دقت و بازدهی را در اجرای استراتژی‌های بازاریابی موبایل خود داشته باشید.



<div style="text-align: center;"><img src="http://uupload.ir/files/jvzs_disactive3.png" /></div>

قابلیت‌های اتوماسیون بازاریابی موبایل در پلتفرم چابک شامل موارد زیر می‌شوند:

- **پوش خودکار**: با تعریف قوانین از پیش تعریف شده‌ای، لحظه‌های حساس را دریابید و به طور خودکار محتوای مناسب انگیزشی برای کاربر بفرستید. (در زمان خرید یک محصول، بعد از عضویت، پرداخت نکردن سبد خرید، …)

- **بازاریابی مکانی**:‌ براساس رفت و آمد کاربران به محدوده مکانی از پیش تعریف شده‌ای برای آن‌ها محتوای مناسب و اثر‌بخش بفرستید.

- **یکپارچه‌سازی**: با استفاده از وب سرویس‌های‌ کامل چابک یا پلاگین‌های موجود، پلتفرم را با نرم افزار‌های خود یکپارچه کنید و به شکل دو سویه فرآیند‌های کسب و کار خود را به کاربرانتان نزدیک نگه دارید.

<br>

### آنالیتیکس موبایل و وب (Mobile & Web Analytics)

بعد از فعال‌سازی کتابخانه‌های چابک، آمار استفاده از اپلیکیشن شما در پنل چابک به طور **زنده و پویا** قابل مشاهده خواهد بود. پنل چابک طوری طراحی شده که هم برای تیم فنی بسیار کارآمد و در زمان رفع اشکال قابل استفاده باشد، هم تیم بازایابی و محصول با شفافیت و بدون پیچیدگی اطلاعات مورد نیاز خود را بازیابی کنند. اما شاید شاهکار پنل چابک، **قابلیت نمایش پروفایل هر کاربر و تاریخچه دستگاه‌هایش** می‌باشد. چابک هیچ جزییاتی را از چشم شما پنهان نمی‌گذارد.

- **مشاهده سوابق کاربر**: بلافاصله پس از نصب اپلیکیشن از سوی کاربر، چابک چیزی شبیه به یک پرونده‌ از آن کاربر ایجاد می‌کند که همه سوابق او (مانند **پیام‌ها**، **بازدیدها**، **جزئیات دستگاه‌ها**، **موقیعت‌های مکانی** و ...) در اپلیکیشن شما ذخیره و قابل مشاهده خواهد بود. این قابلیت به شما کمک می‌کند تا هر کاربر را به طور جداگانه بشناسید و ارتباط نزدیک و شخصی را با کاربرتان رقم بزنید.