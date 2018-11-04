.class final Landroid/os/MiuiProcess$PriorityState;
.super Ljava/lang/Object;
.source "MiuiProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PriorityState"
.end annotation


# instance fields
.field private prevPriority:I

.field private regionCounter:I


# direct methods
.method static synthetic -get0(Landroid/os/MiuiProcess$PriorityState;)I
    .locals 1

    iget v0, p0, Landroid/os/MiuiProcess$PriorityState;->prevPriority:I

    return v0
.end method

.method static synthetic -get1(Landroid/os/MiuiProcess$PriorityState;)I
    .locals 1

    iget v0, p0, Landroid/os/MiuiProcess$PriorityState;->regionCounter:I

    return v0
.end method

.method static synthetic -set0(Landroid/os/MiuiProcess$PriorityState;I)I
    .locals 0

    iput p1, p0, Landroid/os/MiuiProcess$PriorityState;->prevPriority:I

    return p1
.end method

.method static synthetic -set1(Landroid/os/MiuiProcess$PriorityState;I)I
    .locals 0

    iput p1, p0, Landroid/os/MiuiProcess$PriorityState;->regionCounter:I

    return p1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MiuiProcess$PriorityState;->regionCounter:I

    .line 51
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/os/MiuiProcess$PriorityState;->prevPriority:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/MiuiProcess$PriorityState;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/MiuiProcess$PriorityState;-><init>()V

    return-void
.end method
