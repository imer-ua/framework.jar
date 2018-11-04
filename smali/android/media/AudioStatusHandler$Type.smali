.class public final enum Landroid/media/AudioStatusHandler$Type;
.super Ljava/lang/Enum;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/AudioStatusHandler$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/AudioStatusHandler$Type;

.field public static final enum MODE:Landroid/media/AudioStatusHandler$Type;

.field public static final enum SPEAKER:Landroid/media/AudioStatusHandler$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Landroid/media/AudioStatusHandler$Type;

    const-string/jumbo v1, "MODE"

    invoke-direct {v0, v1, v2}, Landroid/media/AudioStatusHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/AudioStatusHandler$Type;->MODE:Landroid/media/AudioStatusHandler$Type;

    new-instance v0, Landroid/media/AudioStatusHandler$Type;

    const-string/jumbo v1, "SPEAKER"

    invoke-direct {v0, v1, v3}, Landroid/media/AudioStatusHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/AudioStatusHandler$Type;->SPEAKER:Landroid/media/AudioStatusHandler$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/media/AudioStatusHandler$Type;

    sget-object v1, Landroid/media/AudioStatusHandler$Type;->MODE:Landroid/media/AudioStatusHandler$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/AudioStatusHandler$Type;->SPEAKER:Landroid/media/AudioStatusHandler$Type;

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/AudioStatusHandler$Type;->$VALUES:[Landroid/media/AudioStatusHandler$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/AudioStatusHandler$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    const-class v0, Landroid/media/AudioStatusHandler$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$Type;

    return-object v0
.end method

.method public static values()[Landroid/media/AudioStatusHandler$Type;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Landroid/media/AudioStatusHandler$Type;->$VALUES:[Landroid/media/AudioStatusHandler$Type;

    return-object v0
.end method
