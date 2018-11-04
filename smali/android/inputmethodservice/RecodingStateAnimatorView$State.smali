.class public final enum Landroid/inputmethodservice/RecodingStateAnimatorView$State;
.super Ljava/lang/Enum;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/RecodingStateAnimatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/inputmethodservice/RecodingStateAnimatorView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field public static final enum RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field public static final enum RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const-string/jumbo v1, "RECORDING_NO_VOICE"

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/RecodingStateAnimatorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 36
    new-instance v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const-string/jumbo v1, "RECORDING_HAS_VOICE"

    invoke-direct {v0, v1, v3}, Landroid/inputmethodservice/RecodingStateAnimatorView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    aput-object v1, v0, v2

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    aput-object v1, v0, v3

    sput-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->$VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public static values()[Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->$VALUES:[Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method
