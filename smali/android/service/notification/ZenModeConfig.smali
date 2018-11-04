.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$1;,
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$Migration;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$XmlV1;,
        Landroid/service/notification/ZenModeConfig$ZenRule;
    }
.end annotation


# static fields
.field private static final ALLOW_ATT_ALARM:Ljava/lang/String; = "alarm"

.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_LIGHT:Ljava/lang/String; = "light"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final ALLOW_ATT_MUSIC:Ljava/lang/String; = "music"

.field private static final ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final ALLOW_ATT_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field public static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_MINUTES:I = 0x5a0

.field private static final DEFAULT_ALLOW_CALLS:Z = true

.field private static final DEFAULT_ALLOW_EVENTS:Z = false

.field private static final DEFAULT_ALLOW_MESSAGES:Z = false

.field private static final DEFAULT_ALLOW_REMINDERS:Z = true

.field private static final DEFAULT_ALLOW_REPEAT_CALLERS:Z = false

.field private static final DEFAULT_ALLOW_SCREEN_OFF:Z = true

.field private static final DEFAULT_ALLOW_SCREEN_ON:Z = true

.field private static final DEFAULT_SOURCE:I = 0x1

.field public static final EVENT_PATH:Ljava/lang/String; = "event"

.field private static final MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final MAX_SOURCE:I

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field private static final RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final SECONDS_MS:I = 0x3e8

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SOURCE_VIP:I = 0x3

.field public static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEEKEND_DAYS:[I

.field public static final WEEKNIGHT_DAYS:[I

.field private static final XML_VERSION:I = 0x2

.field private static final ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public allowAlarm:Z

.field public allowCalls:Z

.field public allowCallsFrom:I

.field public allowEvents:Z

.field public allowLight:Z

.field public allowMessages:Z

.field public allowMessagesFrom:I

.field public allowMusic:Z

.field public allowReminders:Z

.field public allowRepeatCallers:Z

.field public allowVibrate:Z

.field public allowWhenScreenOff:Z

.field public allowWhenScreenOn:Z

.field public automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public user:I


# direct methods
.method static synthetic -wrap0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5([I)Ljava/lang/String;
    .locals 1
    .param p0, "days"    # [I

    .prologue
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 60
    const-string/jumbo v0, "ZenModeConfig"

    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    .line 70
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Landroid/service/notification/ZenModeConfig;->MAX_SOURCE:I

    .line 73
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 75
    const/4 v0, 0x1

    .line 76
    const/4 v3, 0x4

    const/4 v4, 0x5

    .line 75
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    .line 77
    const/4 v0, 0x6

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    .line 79
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 701
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    .line 700
    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 70
    goto :goto_0

    .line 73
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 143
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 144
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 145
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 146
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 147
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 148
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 149
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 150
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    .line 151
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    .line 154
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 143
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 144
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 145
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 146
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 147
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 148
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 149
    iput v6, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 150
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    .line 151
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    .line 154
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_7
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_8
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 182
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "len":I
    if-lez v2, :cond_9

    .line 185
    new-array v1, v2, [Ljava/lang/String;

    .line 186
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 187
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 188
    sget-object v4, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_9

    .line 190
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    aget-object v7, v1, v0

    aget-object v8, v3, v0

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    .line 166
    goto/16 :goto_0

    :cond_1
    move v4, v6

    .line 167
    goto/16 :goto_1

    :cond_2
    move v4, v6

    .line 168
    goto :goto_2

    :cond_3
    move v4, v6

    .line 169
    goto :goto_3

    :cond_4
    move v4, v6

    .line 170
    goto :goto_4

    :cond_5
    move v4, v6

    .line 173
    goto :goto_5

    :cond_6
    move v4, v6

    .line 174
    goto :goto_6

    :cond_7
    move v4, v6

    .line 175
    goto :goto_7

    :cond_8
    move v4, v6

    .line 176
    goto :goto_8

    .line 193
    .restart local v2    # "len":I
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_a

    move v4, v5

    :goto_a
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_b

    :goto_b
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    .line 165
    return-void

    :cond_a
    move v4, v6

    .line 193
    goto :goto_a

    :cond_b
    move v5, v6

    .line 194
    goto :goto_b
.end method

.method private static addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;",
            "Landroid/util/ArrayMap",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;*>;"
    if-eqz p1, :cond_0

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 321
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 10
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 259
    new-instance v2, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 260
    .local v2, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-nez p1, :cond_0

    .line 261
    const-string/jumbo v7, "config"

    const-string/jumbo v8, "delete"

    invoke-static {v2, v7, v8}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v7

    return-object v7

    .line 263
    :cond_0
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v8, p1, Landroid/service/notification/ZenModeConfig;->user:I

    if-eq v7, v8, :cond_1

    .line 264
    const-string/jumbo v7, "user"

    iget v8, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 266
    :cond_1
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eq v7, v8, :cond_2

    .line 267
    const-string/jumbo v7, "allowCalls"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 269
    :cond_2
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v7, v8, :cond_3

    .line 270
    const-string/jumbo v7, "allowRepeatCallers"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 272
    :cond_3
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eq v7, v8, :cond_4

    .line 273
    const-string/jumbo v7, "allowMessages"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 275
    :cond_4
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v7, v8, :cond_5

    .line 276
    const-string/jumbo v7, "allowCallsFrom"

    iget v8, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 278
    :cond_5
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-eq v7, v8, :cond_6

    .line 279
    const-string/jumbo v7, "allowMessagesFrom"

    iget v8, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 281
    :cond_6
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eq v7, v8, :cond_7

    .line 282
    const-string/jumbo v7, "allowReminders"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 284
    :cond_7
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v7, v8, :cond_8

    .line 285
    const-string/jumbo v7, "allowEvents"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 287
    :cond_8
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-eq v7, v8, :cond_9

    .line 288
    const-string/jumbo v7, "allowWhenScreenOff"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 290
    :cond_9
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-eq v7, v8, :cond_a

    .line 291
    const-string/jumbo v7, "allowWhenScreenOn"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 293
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 294
    .local v1, "allRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 295
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 296
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 297
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_d

    .line 298
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 299
    .local v5, "rule":Ljava/lang/String;
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 300
    :goto_1
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_c

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 301
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "automaticRule["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v3, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_b
    const/4 v3, 0x0

    .local v3, "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_1

    .line 300
    .end local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_c
    const/4 v6, 0x0

    .local v6, "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_2

    .line 303
    .end local v5    # "rule":Ljava/lang/String;
    .end local v6    # "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_d
    const-string/jumbo v7, "manualRule"

    iget-object v8, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 304
    return-object v2
.end method

.method public static diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3
    .param p0, "from"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 308
    if-nez p0, :cond_1

    .line 309
    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 310
    .local v0, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-eqz p1, :cond_0

    .line 311
    const-string/jumbo v1, "config"

    const-string/jumbo v2, "insert"

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 313
    :cond_0
    return-object v0

    .line 315
    .end local v0    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :cond_1
    invoke-direct {p0, p1}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v1

    return-object v1
.end method

.method private static generateMinuteBuckets()[I
    .locals 6

    .prologue
    const/16 v4, 0xf

    const/4 v5, 0x2

    .line 354
    const/16 v2, 0xc

    .line 355
    .local v2, "maxHrs":I
    new-array v0, v4, [I

    .line 356
    .local v0, "buckets":[I
    const/4 v3, 0x0

    aput v4, v0, v3

    .line 357
    const/16 v3, 0x1e

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 358
    const/16 v3, 0x2d

    aput v3, v0, v5

    .line 359
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    .line 360
    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v0, v3

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-object v0
.end method

.method private static getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "useLine1"    # Z
    .param p4, "shortVersion"    # Z

    .prologue
    .line 1109
    if-nez p1, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    .line 1110
    :cond_0
    const-string/jumbo v15, ""

    .line 1111
    .local v15, "summary":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_1

    .line 1112
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1113
    .local v11, "id":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1114
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1132
    .end local v11    # "id":Landroid/net/Uri;
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1133
    .local v2, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1134
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1135
    iget-object v15, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_1

    .line 1116
    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v9    # "automaticRule$iterator":Ljava/util/Iterator;
    .restart local v11    # "id":Landroid/net/Uri;
    :cond_3
    if-nez v11, :cond_4

    .line 1117
    const v3, 0x10405e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 1119
    :cond_4
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1120
    .local v4, "time":J
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 1121
    .local v10, "c":Landroid/service/notification/Condition;
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 1122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1123
    .local v12, "now":J
    sub-long v16, v4, v12

    .line 1124
    .local v16, "span":J
    move-wide/from16 v0, v16

    long-to-float v3, v0

    const v6, 0x476a6000    # 60000.0f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v10

    .line 1127
    .end local v12    # "now":J
    .end local v16    # "span":J
    :cond_5
    if-nez v10, :cond_6

    const-string/jumbo v14, ""

    .line 1128
    .local v14, "rt":Ljava/lang/String;
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v15, ""

    goto :goto_0

    .line 1127
    .end local v14    # "rt":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    iget-object v14, v10, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v14, v10, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto :goto_2

    .line 1128
    .restart local v14    # "rt":Ljava/lang/String;
    :cond_8
    move-object v15, v14

    goto :goto_0

    .line 1137
    .end local v4    # "time":J
    .end local v10    # "c":Landroid/service/notification/Condition;
    .end local v11    # "id":Landroid/net/Uri;
    .end local v14    # "rt":Ljava/lang/String;
    .restart local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v9    # "automaticRule$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1138
    const/4 v7, 0x0

    aput-object v15, v6, v7

    .line 1139
    iget-object v7, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 1138
    const v7, 0x10405e2

    .line 1137
    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 1144
    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_a
    return-object v15
.end method

.method public static getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .prologue
    .line 1104
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEventConditionProvider()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 1024
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "userHandle"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EEE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Hm"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "skeleton":Ljava/lang/String;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 843
    .local v1, "now":Ljava/util/GregorianCalendar;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 844
    .local v0, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 845
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 846
    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 847
    invoke-virtual {v1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 848
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v3, "Hm"

    .line 850
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 841
    .end local v0    # "endTime":Ljava/util/GregorianCalendar;
    .end local v1    # "now":Ljava/util/GregorianCalendar;
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "hma"

    goto :goto_0

    .line 848
    .restart local v0    # "endTime":Ljava/util/GregorianCalendar;
    .restart local v1    # "now":Ljava/util/GregorianCalendar;
    .restart local v3    # "skeleton":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "hma"

    goto :goto_1
.end method

.method private static getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 1084
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1086
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1087
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 1088
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1089
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1090
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1091
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 1092
    return-object v4

    .line 1096
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error loading owner caption"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public static getScheduleConditionProvider()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 926
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 340
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 883
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidEventConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 1003
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidHour(I)Z
    .locals 2
    .param p0, "val"    # I

    .prologue
    const/4 v0, 0x0

    .line 641
    if-ltz p0, :cond_0

    const/16 v1, 0x18

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 336
    if-eqz p0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidMinute(I)Z
    .locals 2
    .param p0, "val"    # I

    .prologue
    const/4 v0, 0x0

    .line 645
    if-ltz p0, :cond_0

    const/16 v1, 0x3c

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 902
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidSource(I)Z
    .locals 2
    .param p0, "source"    # I

    .prologue
    const/4 v0, 0x0

    .line 649
    if-ltz p0, :cond_0

    sget v1, Landroid/service/notification/ZenModeConfig;->MAX_SOURCE:I

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static miuiChangeZenModeConfigDefault(Landroid/service/notification/ZenModeConfig;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "rt"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v2, 0x1

    .line 523
    const-string/jumbo v0, "calls"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 524
    const-string/jumbo v0, "music"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    .line 525
    const-string/jumbo v0, "alarm"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    .line 526
    const-string/jumbo v0, "vibrate"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    .line 527
    const-string/jumbo v0, "light"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    .line 522
    return-void
.end method

.method public static newRuleId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1080
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prioritySendersToSource(II)I
    .locals 1
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    .prologue
    .line 755
    packed-switch p0, :pswitch_data_0

    .line 761
    return p1

    .line 756
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 757
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 758
    :pswitch_2
    const/4 v0, 0x0

    return v0

    .line 760
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 614
    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 615
    .local v1, "id":Landroid/net/Uri;
    if-nez v1, :cond_0

    return-object v10

    .line 616
    :cond_0
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "summary":Ljava/lang/String;
    const-string/jumbo v0, "line1"

    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "line1":Ljava/lang/String;
    const-string/jumbo v0, "line2"

    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "line2":Ljava/lang/String;
    const-string/jumbo v0, "icon"

    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 620
    .local v5, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 621
    .local v6, "state":I
    const-string/jumbo v0, "flags"

    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 623
    .local v7, "flags":I
    :try_start_0
    new-instance v0, Landroid/service/notification/Condition;

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 624
    :catch_0
    move-exception v8

    .line 625
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to read condition xml"

    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    return-object v10
.end method

.method public static readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 573
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 574
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string/jumbo v2, "enabled"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 575
    const-string/jumbo v2, "snoozing"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 576
    const-string/jumbo v2, "name"

    invoke-interface {p0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 577
    const-string/jumbo v2, "zen"

    invoke-interface {p0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "zen":Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 579
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v2, v4, :cond_0

    .line 580
    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad zen mode in rule xml:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v6

    .line 583
    :cond_0
    const-string/jumbo v2, "conditionId"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 584
    const-string/jumbo v2, "component"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 585
    const-string/jumbo v2, "creationTime"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Landroid/service/notification/ZenModeConfig;->safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 586
    const-string/jumbo v2, "enabler"

    invoke-interface {p0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 587
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 588
    return-object v0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "migration"    # Landroid/service/notification/ZenModeConfig$Migration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 457
    .local v7, "type":I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    const/4 v10, 0x0

    return-object v10

    .line 458
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v10, "zen"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    return-object v10

    .line 460
    :cond_1
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 461
    .local v5, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v10, "version"

    const/4 v11, 0x2

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 462
    .local v9, "version":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 463
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$XmlV1;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;

    move-result-object v8

    .line 464
    .local v8, "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    invoke-interface {p1, v8}, Landroid/service/notification/ZenModeConfig$Migration;->migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;

    move-result-object v10

    return-object v10

    .line 466
    .end local v8    # "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    :cond_2
    const-string/jumbo v10, "user"

    iget v11, v5, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->user:I

    .line 467
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_9

    .line 468
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 469
    const/4 v10, 0x3

    if-ne v7, v10, :cond_4

    const-string/jumbo v10, "zen"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 470
    return-object v5

    .line 472
    :cond_4
    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 473
    const-string/jumbo v10, "allow"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 474
    const-string/jumbo v10, "calls"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 475
    const-string/jumbo v10, "repeatCallers"

    .line 476
    const/4 v11, 0x0

    .line 475
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 477
    const-string/jumbo v10, "messages"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 478
    const-string/jumbo v10, "reminders"

    .line 479
    const/4 v11, 0x1

    .line 478
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 480
    const-string/jumbo v10, "events"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 481
    const-string/jumbo v10, "from"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 482
    .local v2, "from":I
    const-string/jumbo v10, "callsFrom"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 483
    .local v1, "callsFrom":I
    const-string/jumbo v10, "messagesFrom"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 484
    .local v4, "messagesFrom":I
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 485
    iput v1, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 486
    iput v4, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 496
    :goto_1
    const-string/jumbo v10, "visualScreenOff"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    .line 495
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    .line 498
    const-string/jumbo v10, "visualScreenOn"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    .line 497
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    .line 500
    invoke-static {v5, p0}, Landroid/service/notification/ZenModeConfig;->miuiChangeZenModeConfigDefault(Landroid/service/notification/ZenModeConfig;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 487
    :cond_5
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 488
    sget-object v10, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Migrating existing shared \'from\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 490
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 492
    :cond_6
    const/4 v10, 0x1

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 493
    const/4 v10, 0x1

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 502
    .end local v1    # "callsFrom":I
    .end local v2    # "from":I
    .end local v4    # "messagesFrom":I
    :cond_7
    const-string/jumbo v10, "manual"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 503
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v10

    iput-object v10, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto/16 :goto_0

    .line 504
    :cond_8
    const-string/jumbo v10, "automatic"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 505
    const-string/jumbo v10, "ruleId"

    const/4 v11, 0x0

    invoke-interface {p0, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "id":Ljava/lang/String;
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    .line 507
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 508
    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 509
    iget-object v10, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 514
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_9
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Failed to reach END_DOCUMENT"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private static safeBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 658
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 659
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 653
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 668
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 670
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 663
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 680
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 674
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 676
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 3
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    if-nez p0, :cond_0

    return v1

    .line 346
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 347
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 349
    :cond_2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method private static sourceToPrioritySenders(II)I
    .locals 1
    .param p0, "source"    # I
    .param p1, "def"    # I

    .prologue
    .line 746
    packed-switch p0, :pswitch_data_0

    .line 750
    return p1

    .line 747
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 748
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 749
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 746
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    .prologue
    .line 366
    packed-switch p0, :pswitch_data_0

    .line 374
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 368
    :pswitch_0
    const-string/jumbo v0, "anyone"

    return-object v0

    .line 370
    :pswitch_1
    const-string/jumbo v0, "contacts"

    return-object v0

    .line 372
    :pswitch_2
    const-string/jumbo v0, "stars"

    return-object v0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toCountdownConditionId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 863
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 864
    const-string/jumbo v1, "android"

    .line 863
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 865
    const-string/jumbo v1, "countdown"

    .line 863
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 866
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static toDayList([I)Ljava/lang/String;
    .locals 3
    .param p0, "days"    # [I

    .prologue
    .line 414
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, ""

    return-object v2

    .line 415
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 417
    if-lez v0, :cond_2

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    :cond_2
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 993
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 994
    const-string/jumbo v1, "android"

    .line 993
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 995
    const-string/jumbo v1, "event"

    .line 993
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 996
    const-string/jumbo v1, "userId"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 993
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 997
    const-string/jumbo v2, "calendar"

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 993
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 998
    const-string/jumbo v1, "reply"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 993
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 997
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static toNextAlarmCondition(Landroid/content/Context;JJI)Landroid/service/notification/Condition;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "now"    # J
    .param p3, "alarm"    # J
    .param p5, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 832
    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-static {p0, v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    move-result-object v11

    .line 833
    .local v11, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 834
    .local v12, "res":Landroid/content/res/Resources;
    new-array v3, v9, [Ljava/lang/Object;

    aput-object v11, v3, v8

    const v5, 0x10405df

    invoke-virtual {v12, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 835
    .local v6, "line1":Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v4

    .line 836
    .local v4, "id":Landroid/net/Uri;
    new-instance v3, Landroid/service/notification/Condition;

    const-string/jumbo v5, ""

    const-string/jumbo v7, ""

    move v10, v9

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v3
.end method

.method public static toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    .line 891
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 892
    const-string/jumbo v1, "android"

    .line 891
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 893
    const-string/jumbo v1, "schedule"

    .line 891
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 894
    const-string/jumbo v1, "days"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 895
    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 896
    const-string/jumbo v1, "end"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 897
    const-string/jumbo v1, "exitAtAlarm"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .prologue
    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 791
    .local v10, "now":J
    if-nez p1, :cond_0

    const/16 v0, 0x2710

    :goto_0
    int-to-long v8, v0

    .line 792
    .local v8, "millis":J
    add-long v2, v10, v8

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0

    .line 791
    .end local v8    # "millis":J
    :cond_0
    const v0, 0xea60

    mul-int/2addr v0, p1

    goto :goto_0
.end method

.method public static toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "userHandle"    # I
    .param p5, "shortVersion"    # Z

    .prologue
    .line 799
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    move-result-object v12

    .line 800
    .local v12, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 801
    .local v15, "res":Landroid/content/res/Resources;
    const/16 v4, 0x3c

    move/from16 v0, p3

    if-ge v0, v4, :cond_2

    .line 803
    move/from16 v14, p3

    .line 804
    .local v14, "num":I
    if-eqz p5, :cond_0

    const v16, 0x114001c

    .line 806
    .local v16, "summaryResId":I
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, "summary":Ljava/lang/String;
    if-eqz p5, :cond_1

    const v13, 0x1140020

    .line 809
    .local v13, "line1ResId":I
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, p3

    invoke-virtual {v15, v13, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, "line1":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v4, v9

    const v9, 0x10405de

    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 825
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    .local v8, "line2":Ljava/lang/String;
    :goto_2
    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v5

    .line 826
    .local v5, "id":Landroid/net/Uri;
    new-instance v4, Landroid/service/notification/Condition;

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 827
    const/4 v11, 0x1

    .line 826
    invoke-direct/range {v4 .. v11}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v4

    .line 805
    .end local v5    # "id":Landroid/net/Uri;
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .restart local v14    # "num":I
    :cond_0
    const v16, 0x114001b

    .restart local v16    # "summaryResId":I
    goto :goto_0

    .line 808
    .restart local v6    # "summary":Ljava/lang/String;
    :cond_1
    const v13, 0x114001f

    .restart local v13    # "line1ResId":I
    goto :goto_1

    .line 811
    .end local v6    # "summary":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_2
    const/16 v4, 0x5a0

    move/from16 v0, p3

    if-ge v0, v4, :cond_5

    .line 813
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 814
    .restart local v14    # "num":I
    if-eqz p5, :cond_3

    const v16, 0x114001e

    .line 816
    .restart local v16    # "summaryResId":I
    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 817
    .restart local v6    # "summary":Ljava/lang/String;
    if-eqz p5, :cond_4

    const v13, 0x1140022

    .line 819
    .restart local v13    # "line1ResId":I
    :goto_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    invoke-virtual {v15, v13, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 820
    .restart local v7    # "line1":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v4, v9

    const v9, 0x10405de

    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "line2":Ljava/lang/String;
    goto :goto_2

    .line 815
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v16    # "summaryResId":I
    :cond_3
    const v16, 0x114001d

    .restart local v16    # "summaryResId":I
    goto :goto_3

    .line 818
    .restart local v6    # "summary":Ljava/lang/String;
    :cond_4
    const v13, 0x1140021

    .restart local v13    # "line1ResId":I
    goto :goto_4

    .line 823
    .end local v6    # "summary":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_5
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v4, v9

    const v9, 0x10405de

    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "line2":Ljava/lang/String;
    move-object v7, v8

    .restart local v7    # "line1":Ljava/lang/String;
    move-object v6, v8

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_2
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v4, 0x0

    .line 871
    const-string/jumbo v1, "android"

    invoke-static {p0, v1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-wide v4

    .line 872
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 873
    const-string/jumbo v1, "countdown"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 873
    :cond_1
    return-wide v4

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error parsing countdown condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    return-wide v4
.end method

.method private static tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 424
    if-nez p0, :cond_0

    return-object v5

    .line 425
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-nez v4, :cond_1

    return-object v5

    .line 427
    :cond_1
    array-length v4, v3

    new-array v2, v4, [I

    .line 428
    .local v2, "rt":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 429
    aget-object v4, v3, v1

    invoke-static {v4, v6}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, "day":I
    if-ne v0, v6, :cond_2

    return-object v5

    .line 431
    :cond_2
    aput v0, v2, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "day":I
    :cond_3
    return-object v2
.end method

.method public static tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 10
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1007
    if-eqz p0, :cond_0

    .line 1008
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "condition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1007
    if-eqz v2, :cond_0

    .line 1009
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1007
    if-eqz v2, :cond_0

    .line 1010
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1011
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "event"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1012
    .local v0, "isEvent":Z
    :goto_0
    if-nez v0, :cond_1

    return-object v6

    .end local v0    # "isEvent":Z
    :cond_0
    move v0, v3

    .line 1007
    goto :goto_0

    .line 1013
    .restart local v0    # "isEvent":Z
    :cond_1
    new-instance v1, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 1014
    .local v1, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x2710

    invoke-static {v2, v4}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 1015
    const-string/jumbo v2, "calendar"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 1016
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2, v8, v9}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v4, v8

    if-eqz v2, :cond_3

    .line 1017
    :cond_2
    iput-object v6, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 1019
    :cond_3
    const-string/jumbo v2, "reply"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 1020
    return-object v1
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1066
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 1067
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1068
    .local v1, "i":I
    if-lt v1, v7, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_2

    :cond_1
    return-object v3

    .line 1069
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1070
    .local v0, "hour":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1071
    .local v2, "minute":I
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v2, v3, v7

    :cond_3
    return-object v3
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 437
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    .line 439
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .prologue
    .line 446
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-wide p1

    .line 448
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 9
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 906
    if-eqz p0, :cond_0

    .line 907
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "condition"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 906
    if-eqz v4, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 906
    if-eqz v4, :cond_0

    .line 909
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 910
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "schedule"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 911
    .local v1, "isSchedule":Z
    :goto_0
    if-nez v1, :cond_1

    return-object v7

    .end local v1    # "isSchedule":Z
    :cond_0
    move v1, v5

    .line 906
    goto :goto_0

    .line 912
    .restart local v1    # "isSchedule":Z
    :cond_1
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v3

    .line 913
    .local v3, "start":[I
    const-string/jumbo v4, "end"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v0

    .line 914
    .local v0, "end":[I
    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    return-object v7

    .line 915
    :cond_3
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 916
    .local v2, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string/jumbo v4, "days"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "\\."

    invoke-static {v4, v6}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 917
    aget v4, v3, v5

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 918
    aget v4, v3, v8

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 919
    aget v4, v0, v5

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 920
    aget v4, v0, v8

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 921
    const-string/jumbo v4, "exitAtAlarm"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 922
    return-object v2
.end method

.method private static tryParseZenMode(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 1075
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1076
    .local v0, "rt":I
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "rt":I
    :goto_0
    return v0

    .restart local v0    # "rt":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 631
    const-string/jumbo v0, "id"

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    const-string/jumbo v0, "summary"

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    const-string/jumbo v0, "line1"

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    const-string/jumbo v0, "line2"

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 635
    const-string/jumbo v0, "icon"

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 637
    const-string/jumbo v0, "flags"

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    return-void
.end method

.method public static writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 592
    const-string/jumbo v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    const-string/jumbo v0, "snoozing"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 595
    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    :cond_0
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 599
    const-string/jumbo v0, "component"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 601
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 602
    const-string/jumbo v0, "conditionId"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    :cond_2
    const-string/jumbo v0, "creationTime"

    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 606
    const-string/jumbo v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    :cond_3
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_4

    .line 609
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 591
    :cond_4
    return-void
.end method


# virtual methods
.method public applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 4
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 766
    if-nez p1, :cond_0

    return-void

    .line 767
    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 768
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 769
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 770
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 771
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 773
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 774
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 775
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 774
    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 776
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 778
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    move v0, v1

    .line 777
    :goto_5
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    .line 780
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 779
    :goto_6
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    .line 765
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 767
    goto :goto_0

    :cond_3
    move v0, v2

    .line 768
    goto :goto_1

    :cond_4
    move v0, v2

    .line 769
    goto :goto_2

    :cond_5
    move v0, v2

    .line 770
    goto :goto_3

    :cond_6
    move v0, v2

    .line 771
    goto :goto_4

    :cond_7
    move v0, v2

    .line 778
    goto :goto_5

    :cond_8
    move v1, v2

    .line 780
    goto :goto_6
.end method

.method public copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    .prologue
    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 692
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 694
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    return-object v1

    .line 695
    :catchall_0
    move-exception v1

    .line 696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 380
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_0

    return v1

    .line 381
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 382
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 383
    .local v0, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v2, v3, :cond_2

    .line 385
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-ne v2, v3, :cond_2

    .line 386
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-ne v2, v3, :cond_2

    .line 387
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-ne v2, v3, :cond_2

    .line 388
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-ne v2, v3, :cond_2

    .line 390
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v2, v3, :cond_2

    .line 391
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v2, v3, :cond_2

    .line 392
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v2, v3, :cond_2

    .line 393
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v2, v3, :cond_2

    .line 394
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v2, v3, :cond_2

    .line 395
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v2, v3, :cond_2

    .line 396
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-ne v2, v3, :cond_2

    .line 397
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-ne v2, v3, :cond_2

    .line 398
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v2, v3, :cond_2

    .line 399
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 383
    if-eqz v2, :cond_2

    .line 400
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 383
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 405
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 407
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 408
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 409
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 410
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 405
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    .line 328
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 329
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 330
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 329
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 5

    .prologue
    .line 714
    const/4 v1, 0x0

    .line 715
    .local v1, "priorityCategories":I
    const/4 v0, 0x1

    .line 716
    .local v0, "priorityCallSenders":I
    const/4 v2, 0x1

    .line 717
    .local v2, "priorityMessageSenders":I
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_0

    .line 718
    const/16 v1, 0x8

    .line 720
    :cond_0
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_1

    .line 721
    or-int/lit8 v1, v1, 0x4

    .line 723
    :cond_1
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v4, :cond_2

    .line 724
    or-int/lit8 v1, v1, 0x2

    .line 726
    :cond_2
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v4, :cond_3

    .line 727
    or-int/lit8 v1, v1, 0x1

    .line 729
    :cond_3
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v4, :cond_4

    .line 730
    or-int/lit8 v1, v1, 0x10

    .line 732
    :cond_4
    const/4 v3, 0x0

    .line 733
    .local v3, "suppressedVisualEffects":I
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-nez v4, :cond_5

    .line 734
    const/4 v3, 0x1

    .line 736
    :cond_5
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-nez v4, :cond_6

    .line 737
    or-int/lit8 v3, v3, 0x2

    .line 739
    :cond_6
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v4, v0}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v0

    .line 740
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v4, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    .line 741
    new-instance v4, Landroid/app/NotificationManager$Policy;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "user="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    const-string/jumbo v1, ",allowCalls="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ",allowRepeatCallers="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    const-string/jumbo v1, ",allowMessages="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    const-string/jumbo v1, ",allowCallsFrom="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ",allowMessagesFrom="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string/jumbo v1, ",allowReminders="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const-string/jumbo v1, ",allowEvents="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string/jumbo v1, ",allowWhenScreenOff="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    const-string/jumbo v1, ",allowWhenScreenOn="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    const-string/jumbo v1, ",automaticRules="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, ",manualRule="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    const-string/jumbo v1, ",allowMusic="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    const-string/jumbo v1, ",allowAlarm="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    const-string/jumbo v1, ",allowVibrate="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string/jumbo v1, ",allowLight="

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const/16 v1, 0x5d

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 199
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-eqz v4, :cond_5

    move v4, v5

    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_6
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-eqz v4, :cond_8

    move v4, v5

    :goto_8
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 217
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 218
    .local v2, "len":I
    new-array v1, v2, [Ljava/lang/String;

    .line 219
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 220
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_9

    .line 221
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    .line 222
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v4, v3, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    .line 199
    goto/16 :goto_0

    :cond_1
    move v4, v6

    .line 200
    goto :goto_1

    :cond_2
    move v4, v6

    .line 201
    goto :goto_2

    :cond_3
    move v4, v6

    .line 202
    goto :goto_3

    :cond_4
    move v4, v6

    .line 203
    goto :goto_4

    :cond_5
    move v4, v6

    .line 206
    goto :goto_5

    :cond_6
    move v4, v6

    .line 207
    goto :goto_6

    :cond_7
    move v4, v6

    .line 208
    goto :goto_7

    :cond_8
    move v4, v6

    .line 209
    goto :goto_8

    .line 224
    .restart local v0    # "i":I
    .restart local v1    # "ids":[Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 230
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_a
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-eqz v4, :cond_b

    move v4, v5

    :goto_b
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-eqz v4, :cond_c

    :goto_c
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return-void

    .line 228
    :cond_a
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_b
    move v4, v6

    .line 230
    goto :goto_b

    :cond_c
    move v5, v6

    .line 231
    goto :goto_c
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 531
    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    const-string/jumbo v4, "user"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    const-string/jumbo v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 536
    const-string/jumbo v4, "calls"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 537
    const-string/jumbo v4, "repeatCallers"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    const-string/jumbo v4, "messages"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    const-string/jumbo v4, "reminders"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    const-string/jumbo v4, "events"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    const-string/jumbo v4, "music"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    const-string/jumbo v4, "alarm"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    const-string/jumbo v4, "vibrate"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    const-string/jumbo v4, "light"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    const-string/jumbo v4, "callsFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    const-string/jumbo v4, "messagesFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    const-string/jumbo v4, "visualScreenOff"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    const-string/jumbo v4, "visualScreenOn"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    const-string/jumbo v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_0

    .line 556
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v4, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 558
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    :cond_0
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 561
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 562
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 564
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string/jumbo v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    const-string/jumbo v4, "ruleId"

    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 567
    const-string/jumbo v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    return-void
.end method
