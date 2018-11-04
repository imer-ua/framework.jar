.class Landroid/widget/TranslationManager$TranslateTask;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateTask"
.end annotation


# instance fields
.field mSource:Ljava/lang/String;

.field mTarget:Ljava/lang/String;

.field mWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    .line 229
    return-void
.end method

.method static equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z
    .locals 3
    .param p0, "task1"    # Landroid/widget/TranslationManager$TranslateTask;
    .param p1, "task2"    # Landroid/widget/TranslationManager$TranslateTask;

    .prologue
    const/4 v0, 0x0

    .line 236
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 237
    iget-object v1, p0, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v2, p1, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v2, p1, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 237
    if-eqz v1, :cond_0

    .line 239
    iget-object v0, p0, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    iget-object v1, p1, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 237
    :cond_0
    return v0

    .line 240
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 241
    const/4 v0, 0x1

    return v0

    .line 243
    :cond_2
    return v0
.end method
