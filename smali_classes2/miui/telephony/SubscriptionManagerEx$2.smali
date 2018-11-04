.class Lmiui/telephony/SubscriptionManagerEx$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SubscriptionManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/SubscriptionManagerEx;->initSubscriptionListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/SubscriptionManagerEx;


# direct methods
.method constructor <init>(Lmiui/telephony/SubscriptionManagerEx;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/telephony/SubscriptionManagerEx;

    .prologue
    .line 138
    iput-object p1, p0, Lmiui/telephony/SubscriptionManagerEx$2;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmiui/telephony/SubscriptionManagerEx$2;->this$0:Lmiui/telephony/SubscriptionManagerEx;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->onSubscriptionInfoChanged()V

    .line 140
    return-void
.end method
