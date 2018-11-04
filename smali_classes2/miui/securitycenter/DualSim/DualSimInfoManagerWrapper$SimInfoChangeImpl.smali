.class Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;
.super Ljava/lang/Object;
.source "DualSimInfoManagerWrapper.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimInfoChangeImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$SimInfoChangeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper;->-wrap0()V

    .line 52
    return-void
.end method
