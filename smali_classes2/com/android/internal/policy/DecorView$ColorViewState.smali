.class Lcom/android/internal/policy/DecorView$ColorViewState;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorViewState"
.end annotation


# instance fields
.field color:I

.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field present:Z

.field final seascapeGravity:I

.field final systemUiHideFlag:I

.field targetVisibility:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I

.field view:Landroid/view/View;

.field visible:Z


# direct methods
.method constructor <init>(IIIIILjava/lang/String;II)V
    .locals 1
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "seascapeGravity"    # I
    .param p6, "transitionName"    # Ljava/lang/String;
    .param p7, "id"    # I
    .param p8, "hideWindowFlag"    # I

    .prologue
    .line 2287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2273
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 2274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 2290
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->id:I

    .line 2291
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->systemUiHideFlag:I

    .line 2292
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->translucentFlag:I

    .line 2293
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->verticalGravity:I

    .line 2294
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->horizontalGravity:I

    .line 2295
    iput p5, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->seascapeGravity:I

    .line 2296
    iput-object p6, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->transitionName:Ljava/lang/String;

    .line 2297
    iput p8, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->hideWindowFlag:I

    .line 2289
    return-void
.end method
