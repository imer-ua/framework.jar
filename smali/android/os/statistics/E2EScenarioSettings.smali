.class public final Landroid/os/statistics/E2EScenarioSettings;
.super Ljava/lang/Object;
.source "E2EScenarioSettings.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/E2EScenarioSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/E2EScenarioSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_MODE_ALL:I = 0x3

.field public static final STATISTICS_MODE_AVERAGE:I = 0x1

.field public static final STATISTICS_MODE_HISTORY:I = 0x2

.field public static final STATISTICS_MODE_NONE:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public historyLimitPerDay:I

.field public isAutoAnalysisEnabled:Z

.field public slownessFloorThresholdMillis:I

.field public statisticsMode:I

.field public timeoutMillisOfAutoAnalysis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Landroid/os/statistics/E2EScenarioSettings$1;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioSettings$1;-><init>()V

    .line 105
    sput-object v0, Landroid/os/statistics/E2EScenarioSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/os/statistics/E2EScenarioSettings;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioSettings;-><init>()V

    .line 67
    .local v0, "result":Landroid/os/statistics/E2EScenarioSettings;
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    .line 68
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    .line 70
    iget-boolean v1, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    iput-boolean v1, v0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    .line 71
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    .line 72
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    .line 73
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public enableAutoAnalysis(II)V
    .locals 1
    .param p1, "slownessFloorThresholdMillis"    # I
    .param p2, "timeoutMillisOfAutoAnalysis"    # I

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    .line 86
    iput p1, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    .line 87
    iput p2, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    .line 84
    return-void
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    if-gtz v0, :cond_0

    .line 58
    return v1

    .line 60
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setHistoryLimitPerDay(I)V
    .locals 0
    .param p1, "historyLimitPerDay"    # I

    .prologue
    .line 81
    iput p1, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    .line 80
    return-void
.end method

.method public setStatisticsMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 77
    iput p1, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    .line 76
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
