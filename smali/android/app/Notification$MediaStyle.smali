.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field private mActionsToShowInCompact:[I

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5343
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 5340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 5343
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5350
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 5340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 5351
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 5350
    return-void
.end method

.method private generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "color"    # I

    .prologue
    const/4 v3, -0x1

    const v1, 0x10203aa

    .line 5440
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    const/4 v7, 0x1

    .line 5441
    .local v7, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 5442
    const v4, 0x109008b

    .line 5441
    invoke-direct {v0, v2, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 5443
    .local v0, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5444
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    move v4, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 5446
    if-nez v7, :cond_0

    .line 5447
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 5449
    :cond_0
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 5450
    return-object v0

    .line 5440
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v7    # "tombstone":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "tombstone":Z
    goto :goto_0
.end method

.method private handleImage(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v1, 0x0

    .line 5512
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5513
    const v0, 0x10203b8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 5514
    const v0, 0x1020082

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 5511
    :cond_0
    return-void
.end method

.method private makeMediaBigContentView()Landroid/widget/RemoteViews;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x10203dd

    const/4 v7, 0x0

    .line 5487
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5489
    .local v0, "actionCount":I
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v5, :cond_0

    .line 5490
    const/4 v1, 0x0

    .line 5492
    .local v1, "actionsInCompact":I
    :goto_0
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v5

    if-nez v5, :cond_1

    if-gt v0, v1, :cond_1

    .line 5493
    return-object v9

    .line 5491
    .end local v1    # "actionsInCompact":I
    :cond_0
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v5, v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "actionsInCompact":I
    goto :goto_0

    .line 5495
    :cond_1
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 5496
    const v6, 0x109009b

    .line 5495
    invoke-static {v5, v6, v7}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5499
    .local v2, "big":Landroid/widget/RemoteViews;
    if-lez v0, :cond_2

    .line 5500
    invoke-virtual {v2, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 5501
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 5502
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$Action;

    .line 5503
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v6

    .line 5502
    invoke-direct {p0, v5, v6}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 5504
    .local v3, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 5501
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5507
    .end local v3    # "button":Landroid/widget/RemoteViews;
    .end local v4    # "i":I
    :cond_2
    invoke-direct {p0, v2}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    .line 5508
    return-object v2
.end method

.method private makeMediaContentView()Landroid/widget/RemoteViews;
    .locals 12

    .prologue
    const v10, 0x10203dd

    const/4 v7, 0x0

    .line 5454
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 5455
    const v9, 0x10900a0

    .line 5454
    invoke-static {v8, v9, v7}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 5457
    .local v6, "view":Landroid/widget/RemoteViews;
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5458
    .local v5, "numActions":I
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v8, :cond_0

    move v0, v7

    .line 5461
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 5462
    invoke-virtual {v6, v10}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 5463
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 5464
    if-lt v4, v5, :cond_1

    .line 5465
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 5466
    const-string/jumbo v9, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 5465
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 5467
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    add-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v10, v11

    .line 5465
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5460
    .end local v0    # "N":I
    .end local v4    # "i":I
    :cond_0
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v8, v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 5470
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    :cond_1
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 5472
    .local v1, "action":Landroid/app/Notification$Action;
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v8

    .line 5471
    invoke-direct {p0, v1, v8}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5473
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v6, v10, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 5463
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5476
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v4    # "i":I
    :cond_2
    invoke-direct {p0, v6}, Landroid/app/Notification$MediaStyle;->handleImage(Landroid/widget/RemoteViews;)V

    .line 5478
    const v3, 0x1050044

    .line 5479
    .local v3, "endMargin":I
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v7

    invoke-static {v7}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5480
    const v3, 0x1050046

    .line 5482
    :cond_3
    const v7, 0x10203d9

    invoke-virtual {v6, v7, v3}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 5483
    return-object v6
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 5414
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 5416
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 5417
    const-string/jumbo v0, "android.mediaSession"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5419
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_1

    .line 5420
    const-string/jumbo v0, "android.compactActions"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5413
    :cond_1
    return-void
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 5379
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 5380
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5381
    const-string/jumbo v0, "transport"

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 5383
    :cond_0
    return-object p1
.end method

.method protected hasProgress()Z
    .locals 1

    .prologue
    .line 5523
    const/4 v0, 0x0

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 5399
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 5391
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 5407
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5408
    .local v0, "expanded":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .end local v0    # "expanded":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .restart local v0    # "expanded":Landroid/widget/RemoteViews;
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 5429
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 5431
    const-string/jumbo v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5432
    const-string/jumbo v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 5434
    :cond_0
    const-string/jumbo v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5435
    const-string/jumbo v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 5428
    :cond_1
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 5370
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 5371
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "actions"    # [I

    .prologue
    .line 5361
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 5362
    return-object p0
.end method
