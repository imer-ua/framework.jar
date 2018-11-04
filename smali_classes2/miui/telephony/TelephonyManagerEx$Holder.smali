.class Lmiui/telephony/TelephonyManagerEx$Holder;
.super Ljava/lang/Object;
.source "TelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final CONTEXT:Landroid/content/Context;

.field static final CT_VOLTE_SUPPORTED_MODE:I

.field static final INSTANCE:Lmiui/telephony/TelephonyManagerEx;

.field static final PHONE_COUNT:I

.field static final SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

.field static final TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lmiui/telephony/TelephonyManagerEx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/telephony/TelephonyManagerEx;-><init>(Lmiui/telephony/TelephonyManagerEx;)V

    sput-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    .line 45
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    .line 47
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    .line 50
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    .line 51
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lmiui/telephony/TelephonyManagerEx$Holder;->PHONE_COUNT:I

    .line 52
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lmiui/telephony/TelephonyManagerEx$Holder;->CT_VOLTE_SUPPORTED_MODE:I

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
