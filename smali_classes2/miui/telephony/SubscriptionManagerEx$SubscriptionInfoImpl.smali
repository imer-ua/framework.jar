.class Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;
.super Lmiui/telephony/SubscriptionInfo;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/SubscriptionManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionInfoImpl"
.end annotation


# instance fields
.field mSlotId:I

.field private final mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private final mSubscriptionId:I


# direct methods
.method private constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p1, "si"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 412
    invoke-direct {p0}, Lmiui/telephony/SubscriptionInfo;-><init>()V

    .line 413
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :goto_0
    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    .line 414
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lmiui/telephony/SubscriptionManagerEx;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    :goto_1
    iput v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    .line 415
    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 412
    return-void

    .line 413
    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SUBSCRIPTION_ID:I

    goto :goto_0

    .line 414
    :cond_1
    sget v0, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    goto :goto_1
.end method

.method public static from(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "sis":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez p0, :cond_0

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 427
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v1, "rets":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 429
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-static {v2}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    return-object v1
.end method

.method public static from(Landroid/telephony/SubscriptionInfo;)Lmiui/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v0, 0x0

    .line 419
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;-><init>(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0
.end method

.method private getDefaultDisplayName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 481
    const-string/jumbo v0, ""

    .line 482
    .local v0, "displayName":Ljava/lang/String;
    iget v2, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    sget v3, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-eq v2, v3, :cond_0

    .line 484
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v2

    .line 487
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-virtual {v3, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    .line 488
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    iget v6, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-virtual {v5, v6}, Lmiui/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v5

    .line 489
    const/4 v6, 0x1

    .line 484
    invoke-interface {v2, v3, v4, v5, v6}, Lmiui/telephony/IMiuiTelephony;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 493
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    sget-object v2, Lmiui/telephony/SubscriptionManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x110900b2

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    return-object v0

    .line 490
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 457
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    .line 457
    :cond_0
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSubscriptionId:I

    return v0
.end method

.method public isActivated()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 467
    iget v1, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    sget v2, Lmiui/telephony/SubscriptionManagerEx;->INVALID_SLOT_ID:I

    if-eq v1, v2, :cond_1

    .line 468
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    return v3

    .line 472
    :cond_0
    :try_start_0
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    iget v2, p0, Lmiui/telephony/SubscriptionManagerEx$SubscriptionInfoImpl;->mSlotId:I

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->isIccCardActivate(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 473
    :catch_0
    move-exception v0

    .line 477
    :cond_1
    return v3
.end method
