.class public Landroid/content/ContentProviderInjector;
.super Ljava/lang/Object;
.source "ContentProviderInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCrossUserIncomingUri(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    .line 24
    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    return v1
.end method

.method public static isMmsProviderClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string/jumbo v0, "com.android.providers.telephony.MmsProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
