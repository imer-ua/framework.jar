.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    }
.end annotation


# instance fields
.field mRcc:Landroid/media/RemoteControlClient;

.field mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .prologue
    .line 2099
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 2100
    const/high16 v0, 0x800000

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    .line 2101
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2102
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2098
    return-void
.end method

.method private configureSessionVolume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2304
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-nez v3, :cond_1

    .line 2305
    invoke-static {}, Landroid/media/MediaRouter;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2306
    const-string/jumbo v3, "MediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No Rcc to configure volume for route "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_0
    return-void

    .line 2310
    :cond_1
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v3}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v1

    .line 2311
    .local v1, "session":Landroid/media/session/MediaSession;
    if-nez v1, :cond_3

    .line 2312
    invoke-static {}, Landroid/media/MediaRouter;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2313
    const-string/jumbo v3, "MediaRouter"

    const-string/jumbo v4, "Rcc has no session to configure volume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_2
    return-void

    .line 2317
    :cond_3
    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 2319
    const/4 v2, 0x0

    .line 2320
    .local v2, "volumeControl":I
    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    packed-switch v3, :pswitch_data_0

    .line 2329
    :goto_0
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    invoke-virtual {v3}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getVolumeControl()I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 2331
    :cond_4
    :goto_1
    new-instance v3, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget v4, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    iget v5, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-direct {v3, p0, v2, v4, v5}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;-><init>(Landroid/media/MediaRouter$UserRouteInfo;III)V

    iput-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2332
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 2303
    .end local v2    # "volumeControl":I
    :cond_5
    :goto_2
    return-void

    .line 2322
    .restart local v2    # "volumeControl":I
    :pswitch_0
    const/4 v2, 0x2

    .line 2323
    goto :goto_0

    .line 2330
    :cond_6
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    invoke-virtual {v3}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getMaxVolume()I

    move-result v3

    iget v4, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 2336
    .end local v2    # "volumeControl":I
    :cond_7
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2337
    .local v0, "bob":Landroid/media/AudioAttributes$Builder;
    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 2338
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 2339
    iput-object v5, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    goto :goto_2

    .line 2320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaybackInfoOnRcc()V
    .locals 0

    .prologue
    .line 2300
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2299
    return-void
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public requestSetVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 2255
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2256
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    .line 2257
    const-string/jumbo v0, "MediaRouter"

    const-string/jumbo v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    return-void

    .line 2260
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2254
    :cond_1
    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 2266
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2267
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    .line 2268
    const-string/jumbo v0, "MediaRouter"

    const-string/jumbo v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    return-void

    .line 2271
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2265
    :cond_1
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 2139
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 2140
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2138
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2187
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2186
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2197
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2196
    return-void
.end method

.method public setName(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2124
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2126
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2123
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 2110
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2111
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2109
    return-void
.end method

.method public setPlaybackStream(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 2293
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 2294
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    .line 2295
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2292
    :cond_0
    return-void
.end method

.method public setPlaybackType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2215
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 2216
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2217
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2214
    :cond_0
    return-void
.end method

.method public setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "rcc"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 2166
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 2167
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 2165
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 2149
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 2148
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 2240
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2241
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_1

    .line 2242
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    .line 2243
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->setCurrentVolume(I)V

    .line 2246
    :cond_0
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2247
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_1

    .line 2248
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2239
    :cond_1
    return-void
.end method

.method public setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;

    .prologue
    .line 2205
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 2204
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .param p1, "volumeHandling"    # I

    .prologue
    .line 2228
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 2229
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2230
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2227
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .param p1, "volumeMax"    # I

    .prologue
    .line 2282
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 2283
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    .line 2284
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2281
    :cond_0
    return-void
.end method
