.class public final Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisplayLabel:Ljava/lang/CharSequence;

.field private final mExtendedInfo:Ljava/lang/CharSequence;

.field private mPinned:Z

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mResolvedIntent:Landroid/content/Intent;

.field private mShowMore:Z

.field private final mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "pLabel"    # Ljava/lang/CharSequence;
    .param p5, "pInfo"    # Ljava/lang/CharSequence;
    .param p6, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1050
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 1048
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    .line 1052
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1054
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 1055
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 1057
    new-instance v1, Landroid/content/Intent;

    if-eqz p6, :cond_0

    .end local p6    # "pOrigIntent":Landroid/content/Intent;
    :goto_0
    invoke-direct {v1, p6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1059
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x3000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1061
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1062
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1064
    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 1065
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    .line 1051
    return-void

    .line 1058
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p6    # "pOrigIntent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p6

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "other"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1079
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 1048
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    .line 1080
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1081
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1082
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 1083
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 1084
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 1085
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 1086
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1087
    iget-boolean v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    .line 1088
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    .line 1079
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "other"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "displayIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "displayLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 1048
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    .line 1069
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1070
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1071
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 1072
    iget-boolean v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    .line 1073
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 1074
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 1075
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 1076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    .line 1068
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "other"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "displayIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "displayLabel"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addAlternateSourceIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "alt"    # Landroid/content/Intent;

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    return-void
.end method

.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 1114
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIsShowMore()Z
    .locals 1

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mShowMore:Z

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 1148
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1149
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1148
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasDisplayIcon()Z
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return v0
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 1130
    return-void
.end method

.method public setPinned(Z)V
    .locals 0
    .param p1, "pinned"    # Z

    .prologue
    .line 1176
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    .line 1175
    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1155
    const/4 v0, 0x1

    return v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 1161
    const/4 v0, 0x1

    return v0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1167
    const/4 v0, 0x0

    return v0
.end method
