.class Lmiui/view/RingerModeLayout$4;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/RingerModeLayout;

    .prologue
    .line 337
    iput-object p1, p0, Lmiui/view/RingerModeLayout$4;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v4, p0, Lmiui/view/RingerModeLayout$4;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v4}, Lmiui/view/RingerModeLayout;->-get5(Lmiui/view/RingerModeLayout;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lmiui/view/RingerModeLayout$4;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11020026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    const-string/jumbo v0, "com.android.settings/com.android.settings.Settings$MiuiSilentModeAcivity"

    .line 342
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 343
    .local v1, "component":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    return-void

    .line 344
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 348
    :try_start_0
    iget-object v4, p0, Lmiui/view/RingerModeLayout$4;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v4}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    iget-object v4, p0, Lmiui/view/RingerModeLayout$4;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v4}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/view/VolumeDialog;->dismiss()V

    .line 353
    return-void

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RingerModeLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start activity exception, component = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
