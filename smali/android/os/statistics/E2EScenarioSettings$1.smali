.class final Landroid/os/statistics/E2EScenarioSettings$1;
.super Ljava/lang/Object;
.source "E2EScenarioSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/E2EScenarioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/os/statistics/E2EScenarioSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/E2EScenarioSettings;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 109
    new-instance v0, Landroid/os/statistics/E2EScenarioSettings;

    invoke-direct {v0, p1}, Landroid/os/statistics/E2EScenarioSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/os/statistics/E2EScenarioSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/E2EScenarioSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/statistics/E2EScenarioSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 113
    new-array v0, p1, [Landroid/os/statistics/E2EScenarioSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Landroid/os/statistics/E2EScenarioSettings$1;->newArray(I)[Landroid/os/statistics/E2EScenarioSettings;

    move-result-object v0

    return-object v0
.end method
