.class public final Landroid/app/usage/UsageEvents$Event;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final CONFIGURATION_CHANGE:I = 0x5

.field public static final CONTINUE_PREVIOUS_DAY:I = 0x4

.field public static final CONTINUE_PREVIOUS_HOUR:I = 0x65

.field public static final END_OF_DAY:I = 0x3

.field public static final END_OF_HOUR:I = 0x64

.field public static final KEY_GUARD_LOCK:I = 0x66

.field public static final KEY_GUARD_UNLOCK:I = 0x67

.field public static final MOVE_TO_BACKGROUND:I = 0x2

.field public static final MOVE_TO_FOREGROUND:I = 0x1

.field public static final NONE:I = 0x0

.field public static final SHORTCUT_INVOCATION:I = 0x8

.field public static final SYSTEM_INTERACTION:I = 0x6

.field public static final USER_INTERACTION:I = 0x7


# instance fields
.field public mClass:Ljava/lang/String;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mEventType:I

.field public mPackage:Ljava/lang/String;

.field public mShortcutId:Ljava/lang/String;

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-wide v0
.end method
