.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;


# direct methods
.method constructor <init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    .prologue
    .line 102
    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-get0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 104
    return-void
.end method
