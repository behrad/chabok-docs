---
id: custom-data
title: داده‌های سفارشی کاربر
layout: android
permalink: android/custom-data.html
prev: deeplink.html
next: behavior-tracking.html
---

 در این صفحه می‌توانید برای کاربرانتان **اطلاعات، ویژگی‌ها (attributes) و تگ** اضافه کنید. ثبت اطلاعات هر کاربر به تعامل شما با او کمک می‌کند طوری که می‌توانید **پیام‌های شخصی‌سازی شده** برایشان ارسال کنید.

<Br><Br>


### مدیریت اطلاعات کاربر (User Attributes)
---

شما می‌توانید اطلاعات و داده‌هایی که از کاربرانتان دارید را در پروفایل او مدیریت کنید و در تعامل با او از آن‌ها استفاده کنید.

<br>

#### ثبت اطلاعات کاربر 

با فراخوانی متد زیر می‌توانید اطلاعات و سوابق کاربر را جمع‌آوری و ذخیره کنید:

```java
HashMap<String, Object> userInfo = new HashMap<>();

userAttribute.put("firstName", "محمدرضا");
userAttribute.put("lastName", "اخوان");
userAttribute.put("age", 35);
userAttribute.put("gender", "مرد");

AdpPushClient.get().setUserAttributes(userAttribute);
```

پس از فراخوانی این متد و ثبت اطلاعات می‌توانید آن را در **پنل > جزئیات دستگاه > کارت اطلاعات کاربر** مانند زیر مشاهده کنید:

![عکس مربوطه](http://uupload.ir/files/ovf0_set-user-info.png)

<br>

> `نکته` : در صورتی که از ویژگی  (**phone** (Attribute استفاده کنید، می‌توانید با smart API چابک اقدام به ارسال  پیامک کنید. فقط دقت داشته باشید که شماره همراه کاربر با کد کشور او شروع شود؛ به عنوان مثال ***۹۸۹۱۲۰۴۹۸.

<br>

>`نکته:` در صورتی که از نسخه ۲.۱۶.۰ یا پایین‌‌تر چابک استفاده می‌کنید، باید متد زیر را به کار ببرید.

```java
HashMap<String, Object> userInfo = new HashMap<>();

userInfo.put("firstName", "محمدرضا");
userInfo.put("lastName", "اخوان");
userInfo.put("age", 35);
userInfo.put("gender", "مرد");

AdpPushClient.get().setUserInfo(userInfo);
```

> `نکته` : دقت داشته باشید  **type** مقداری که به `value` در متد `setUserAttributes` داده‌اید، را نمی‌توانید تغییر دهید . به این معنی که اگر `boolean` ذخیره کرده‌اید، دیگر **نمی‌توانید** عدد یا `string` دهید یا برعکس. به مثال زیر توجه کنید. 

به عنوان مثال اگر مقدار `age` را مانند زیر `string` قرار داده باشید:


```java
HashMap<String, Object> userInfo = new HashMap<>();

userAttribute.put("age", "نوزده");

AdpPushClient.get().setUserAttributes(userAttribute);
```

دیگر عدد قرار دادن آن مانند زیر **کار نخواهد کرد:**

```java
HashMap<String, Object> userInfo = new HashMap<>();

userAttribute.put("age", 19);

AdpPushClient.get().setUserAttributes(userAttribute);
```

<br>

#### دریافت اطلاعات کاربر

برای دریافت اطلاعات کاربر متد زیر را فراخوانی کنید:

```java
AdpPushClient.get().getUserAttributes(userAttribute);
```

<br>

#### افزایش داده‌های کمیتی کاربر

شما می‌توانید داده‌های کمیتی کاربر را مانند **بازدید از محصول یا صفحه‌ای، خرید آیتم خاصی** و .. را به تعداد دلخواهتان **افزایش** دهید. برای این کار متد زیر را فراخوانی کنید: 

```java
AdpPushClient.get().incrementUserAttribute("visit_comedy_shows");
AdpPushClient.get().incrementUserAttribute("visit_comedy_shows", 5);
```
 همچنین این متد از **آرایه‌ای** از اطلاعات کاربر (attribute) هم پشتیبانی می‌کند. به نمونه زیر دقت کنید: 

```java
ArrayList<String> attributes = new ArrayList<>();

attributes.add("comedy_movie");
attributes.add("action_movie");
attributes.add("view_movie_detail");

AdpPushClient.get()
                .incrementUserAttribute(attributes);
```
کد بالا به هر کدام از attributeها **یک عدد** اضافه می‌کند.

برای اضافه کردن **تعداد دلخواه** می‌توانید از کد زیر استفاده کنید:

```java
HashMap<String, Double> attributes = new HashMap<>();
                
attributes.put("comedy_movie", 5d);
attributes.put("action_movie", 2d);
attributes.put("view_movie_detail", 1d);
                
AdpPushClient.get()
                .incrementUserAttribute(attributes);
```

<br><br>

### مدیریت تگ‌ها
---

یکی از قوانین سگمنت، **تگ** یا همان **برچسب‌گذاری کاربران** می‌باشد. به عنوان مثال می‌توانید کاربران خود را بر اساس **جنسیت** برچسب‌گذاری کرده و به آن‌ها پیام خاصی را ارسال کنید و یا به کاربرانی که از پرداخت درون برنامه‌ای شما استفاده می‌کنند یک `Tag` با عنوان `Premium_User` اختصاص دهید.

#### افزودن تگ

با استفاده از متد `addTag`، شما می‌توانید به کاربر یک یا مجموعه‌ای از `Tag`ها اختصاص دهید:

```java
//Add a tag to current user.
AdpPushClient.get().addTag("TAG_NAME", new Callback() {...});

//Add array of tags to current user.
AdpPushClient.get().addTag(new String[]{"TAG_NAME_1", "TAG_NAME_2"}, new Callback() {...});
```
در مثال زیر به کاربر جاری تگ `Premium_User` اختصاص داده شده است:

```java
AdpPushClient.get().addTag("Premium_User", new Callback() {  
	@Override  
	public void onSuccess(Object value) {  
		Log.d(TAG, "Successfully added tag to current user devices");  
	}  
  
	@Override  
	public void onFailure(Throwable value) {  
		Log.d(TAG, "Couldn't add tag to current user devices");  
	}  
});
```
اگر عملیات افزودن تگ با موفقیت انجام شود، می‌توانید از طریق پنل چابک، تگ اضافه شده به کاربر را در بخش مشترکین همانند تصویر زیر مشاهده کنید:

![مشترک چابک](http://uupload.ir/files/jse9_addtag.png)

<br>

همچنین با توجه به پشتیبانی این متد از آرایه‌ای از تگ‌ها می‌توانید مانند زیر چند تگ را **یکجا** به کاربر اضافه کنید:

```java
String[] tagsName = new String[]{"GUEST","MALE"};  
  
AdpPushClient.get().addTag(tagsName, new Callback() {  
	@Override  
	public void onSuccess(Object value) {  
		Log.d(TAG, "Successfully added tags to current user devices");  
	}  
	@Override  
	public void onFailure(Throwable value) {  
		Log.d(TAG, "Couldn't add tags to current user devices");  
	}  
});
```
> `نکته` : شما می‌توانید کاربران مهمان اپلیکیشنتان را با گذاشتن تگ **GUEST** گروه‌بندی کنید.

<br>

#### حذف تگ

با استفاده از متد `removeTag`، می‌توانید یک `Tag` خاص از کاربر جاری را حذف کنید:

```java
AdpPushClient.get().removeTag("TAG_NAME", new Callback() {...});
```
برای نمونه کد زیر تگ `Premium_User` را از کاربر جاری حذف می‌کند.

```java
AdpPushClient.get().removeTag("Premium_User", new Callback() {  
	@Override  
	public void onSuccess(Object value) {  
		Log.d(TAG, "Successfully removed tag to current user devices");  
	}  
  
	@Override  
	public void onFailure(Throwable value) {  
		Log.d(TAG, "Couldn't remove tag to current user devices");  
	}  
});
```

همچنین با توجه به پشتیبانی این متد از آرایه‌ای از تگ‌ها می‌توانید مانند زیر چند تگ را **یکجا** از کاربر حذف کنید:

```java
String[] tagsName = new String[]{"GUEST", "MALE"};

AdpPushClient.get().removeTag(tagsName, new Callback() {
	@Override
	public void onSuccess(Object value) {
		Log.d(TAG, "Remove array of tags onSuccess: called");
	}

	@Override
	public void onFailure(Throwable t) {
		Log.d(TAG, "Remove array of tags onError: called, message: " + t.getMessage());
	}
});
```

> ‌ `نکته:` برای حذف همه تگ‌های یک کاربر می‌توانید در متد بالا، جای نام تگ‌ها را خالی بگذارید.
