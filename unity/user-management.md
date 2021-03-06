---
id: user-management
title: گروه‌بندی کاربران
layout: unity
permalink: unity/user-management.html
prev: tracker.html
next: behavior-tracking.html
---

گروه‌بندی کاربران در چابک از طریق موتور پیشرفته **سگمنت** انجام می‌شود. با این ابزار شما می‌توانید کاربرانتان را با قوانین گوناگون به گروه‌های بسیار ریز و دقیقی تقسیم کنید. این قوانین یا فیلترها تنوع گسترده‌ای را در اختیار شما می‌گذارند تا همواره دست بازتری برای ارتباط هدفمند با کاربرانتان داشته باشید. برخی فیلترها در چابک مانند **زمان نصب**، **بازدید**، [**تگ**](/unity/user-management.html#تگها)،‌ **نوع دستگاه**، [**موقعیت مکانی**](/android/location-tracking.html)، **نسخه سیستم‌عامل** و ... از پیش تعریف شده‌اند و نیاز به پیاده‌سازی ندارند. علاوه بر آن شما می‌توانید **فیلترهای جدیدی** را بر مبنای رفتار کاربر از [طریق رصد آن‌ها](/unity/user-management.html#افزودن-فیلتر-برمبنای-رفتار) اضافه کنید.

<!---
دقت داشته باشید که از [کانال‌ها](/unity/chabok-messaging.html#کانال) برای گروه‌بندی کاربران **استفاده نکنید** زیرا این دو مکانیزم با هم متفاوت هستند. به عنوان مثال از کانال برای **جداسازی موضوعات محتوا**، **قابلیت چت**، **کامنت** و ... استفاده می‌شود. اما از گروه‌بندی کاربران برای ارسال کمپین یا پیام به گروهی از کاربران که به عنوان مثال یک **تگ خاص** دارند یا ترکیب آن با ویژگی‌های دیگر مانند کاربرانی که **گوشی‌های اندروید** دارند به کار برده می‌شود.
-->
<Br>

### ایجاد و ذخیره سگمنت

ایجاد و ذخیره سگمنت از طریق **پنل** انجام می‌شود. بدین صورت که شما پس از ورود به  پنل باید به بخش **ارسال پیام متنی** بروید و در بخش [گیرندگان](/panel/send.html#مخاطبان-پیام) گزینه سگمنت را انتخاب نمایید. فیلترهای از پیش تعریف شده سگمنت چابک عبارتند از **بازدید**، **[تگ](/unity/user-management.html#تگها)**، **نوع دستگاه**، **موقعیت مکانی**، **نسخه برنامه** و **نسخه سیستم عامل**. همچنین آمار لحظه‌ای سگمنت‌ها را می‌توانید از [داشبورد](/panel/dashboard.html#سگمنت) پنل مشاهده کنید.

![مشترک چابک](http://uupload.ir/files/9vyi_segment.png)

#### افزودن فیلتر برمبنای رفتار

شما می‌توانید علاوه بر فیلترهای پیش‌فرض چابک، فیلترهای جدیدی را بر مبنای **رفتار کاربران** به بخش سگمنت پنل اضافه کنید. این رفتارها می‌توانند **افزودن به سبد خرید**، **کامنت**، **لایک**، **پرداخت** و ... باشند. هر کدام از این فیلترها با سه گزینه اولین بار، آخرین بار و تعداد رخ دادن به منوی سگمنت اضافه خواهند شد. برای پیاده‌سازی این کار باید صفحه [رصد رفتار درون‌برنامه‌ای](/unity/behavior-tracking) را با دقت مطالعه نمایید.

<Br>

### تگ‌ها

یکی از قوانین سگمنت، **تگ** یا همان **برچسب‌گذاری کاربران** می‌باشد. به عنوان مثال می‌توانید کاربران خود را بر اساس **جنسیت** برچسب‌گذاری کرده و به آن‌ها پیام خاصی را ارسال کنید و یا به کاربرانی که از پرداخت درون برنامه‌ای شما استفاده می‌کنند یک `Tag` با عنوان `Premium_User` اختصاص دهید.

#### افزودن تگ

با استفاده از متد `addTag`، شما می‌توانید به کاربر یک یا مجموعه‌ای از `Tag`ها اختصاص دهید:

```csharp
//Add a tag to current user.
chabok.AddTag("TAG_NAME", callback);
```

در مثال زیر به کاربر جاری تگ `Premium_User` اختصاص داده شده است

```csharp
//Add a tag to current user.
chabok.AddTag("PREMIUM_USER", callback);
```

اگر عملیات افزودن تگ با موفقیت انجام شود، می‌توانید از طریق پنل چابک، تگ اضافه شده به کاربر را در بخش مشترکین همانند تصویر زیر مشاهده کنید:

![مشترک چابک](http://uupload.ir/files/jse9_addtag.png)
