.class Lmiui/maml/elements/MusicControlScreenElement$1;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClientChanged:Z

.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    .line 265
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 3
    .param p1, "clearing"    # Z

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    .line 392
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicControlScreenElement;->readPackageName()V

    .line 393
    const-string/jumbo v1, "MusicControlScreenElement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get14(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get14(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v2, "/"

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 394
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get13(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-get13(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v2, " clearing:"

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap2(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 390
    return-void

    .line 393
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 394
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 399
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 22
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set4(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/RemoteController$MetadataEditor;)Landroid/media/RemoteController$MetadataEditor;

    .line 331
    const/4 v5, 0x0

    .line 333
    .local v5, "anotherSong":Z
    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 334
    .local v18, "title":Ljava/lang/String;
    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "artist":Ljava/lang/String;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "album":Ljava/lang/String;
    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\ntitle: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", artist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", album: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-nez v18, :cond_0

    if-eqz v6, :cond_7

    .line 338
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->-get0(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v4}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 339
    .local v5, "anotherSong":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6, v4}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap4(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v5    # "anotherSong":Z
    :cond_1
    const/16 v19, 0x64

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 343
    .local v7, "artwork":Landroid/graphics/Bitmap;
    const-string/jumbo v20, "MusicControlScreenElement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "artwork: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-nez v7, :cond_9

    move v8, v5

    .line 345
    .local v8, "artworkInfoValid":Z
    :goto_2
    if-eqz v8, :cond_2

    .line 348
    if-nez v7, :cond_a

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1f4

    invoke-static/range {v19 .. v21}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap0(Lmiui/maml/elements/MusicControlScreenElement;J)V

    .line 355
    :cond_2
    :goto_3
    const/16 v19, 0x3e8

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, "raw":Ljava/lang/String;
    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "raw lyric: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static/range {v17 .. v17}, Lmiui/maml/elements/MusicLyricParser;->parseLyric(Ljava/lang/String;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v9

    .line 358
    .local v9, "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    if-eqz v9, :cond_3

    .line 359
    invoke-virtual {v9}, Lmiui/maml/elements/MusicLyricParser$Lyric;->decorate()V

    .line 361
    :cond_3
    if-nez v9, :cond_b

    move v12, v5

    .line 362
    .local v12, "lyricInfoValid":Z
    :goto_4
    if-eqz v12, :cond_4

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lmiui/maml/elements/MusicControlScreenElement;->-set3(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap7(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    .line 366
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->-get9(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v19

    if-eqz v19, :cond_c

    const/16 v19, 0x1e

    :goto_5
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 368
    const-wide/16 v20, -0x1

    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadataEditor;->getLong(IJ)J

    move-result-wide v10

    .line 369
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lmiui/maml/elements/MusicControlScreenElement;->-get11(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lmiui/maml/elements/MusicController;->getEstimatedMediaPosition()J

    move-result-wide v14

    .line 370
    .local v14, "position":J
    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "duration: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-ltz v19, :cond_d

    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-ltz v19, :cond_d

    const/4 v13, 0x1

    .line 372
    .local v13, "progressInfoValid":Z
    :goto_6
    if-eqz v13, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10, v11, v14, v15}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap8(Lmiui/maml/elements/MusicControlScreenElement;JJ)V

    .line 376
    :cond_5
    const v19, 0x10000001

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/Rating;

    .line 377
    .local v16, "rating":Landroid/media/Rating;
    const-string/jumbo v19, "MusicControlScreenElement"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "rating: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap9(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V

    .line 382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->mClientChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 383
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onClientChange(Z)V

    .line 329
    :cond_6
    return-void

    .line 337
    .end local v7    # "artwork":Landroid/graphics/Bitmap;
    .end local v8    # "artworkInfoValid":Z
    .end local v9    # "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    .end local v10    # "duration":J
    .end local v12    # "lyricInfoValid":Z
    .end local v13    # "progressInfoValid":Z
    .end local v14    # "position":J
    .end local v16    # "rating":Landroid/media/Rating;
    .end local v17    # "raw":Ljava/lang/String;
    .local v5, "anotherSong":Z
    :cond_7
    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 343
    .end local v5    # "anotherSong":Z
    .restart local v7    # "artwork":Landroid/graphics/Bitmap;
    :cond_8
    const-string/jumbo v19, "null"

    goto/16 :goto_1

    .line 344
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 351
    .restart local v8    # "artworkInfoValid":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap5(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 361
    .restart local v9    # "lyric":Lmiui/maml/elements/MusicLyricParser$Lyric;
    .restart local v17    # "raw":Ljava/lang/String;
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 366
    .restart local v12    # "lyricInfoValid":Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_5

    .restart local v10    # "duration":J
    .restart local v14    # "position":J
    :cond_d
    move v13, v5

    .line 371
    goto :goto_6
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 408
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    .line 299
    const-string/jumbo v0, "MusicControlScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement$1;->onStateUpdate(I)V

    .line 293
    const-string/jumbo v0, "MusicControlScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateUpdate2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 8
    .param p1, "transportControlFlags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    const-string/jumbo v1, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transportControlFlags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_2

    move v0, v2

    .line 271
    .local v0, "supportUserRating":Z
    :goto_0
    if-nez v0, :cond_0

    .line 272
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap3(Lmiui/maml/elements/MusicControlScreenElement;)V

    .line 274
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_4

    .line 275
    and-int/lit8 v1, p1, 0x3c

    if-nez v1, :cond_3

    move v1, v2

    .line 274
    :goto_1
    invoke-static {v4, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set1(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 279
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_6

    .line 280
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_5

    move v1, v2

    .line 279
    :goto_2
    invoke-static {v4, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set2(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 281
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    if-eqz p1, :cond_8

    .line 282
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_7

    move v1, v2

    .line 281
    :goto_3
    invoke-static {v4, v1}, Lmiui/maml/elements/MusicControlScreenElement;->-set0(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 283
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v1, v1, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get5(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get4(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_4
    int-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 285
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get7(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v4

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get6(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_5
    int-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 286
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->-get3(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v1

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v4}, Lmiui/maml/elements/MusicControlScreenElement;->-get2(Lmiui/maml/elements/MusicControlScreenElement;)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 268
    :cond_1
    return-void

    .end local v0    # "supportUserRating":Z
    :cond_2
    move v0, v3

    .line 270
    goto :goto_0

    .restart local v0    # "supportUserRating":Z
    :cond_3
    move v1, v3

    .line 275
    goto :goto_1

    :cond_4
    move v1, v3

    .line 274
    goto :goto_1

    :cond_5
    move v1, v3

    .line 280
    goto :goto_2

    :cond_6
    move v1, v3

    .line 279
    goto :goto_2

    :cond_7
    move v1, v3

    .line 282
    goto :goto_3

    :cond_8
    move v1, v3

    .line 281
    goto :goto_3

    :cond_9
    move v1, v3

    .line 284
    goto :goto_4

    :cond_a
    move v1, v3

    .line 285
    goto :goto_5

    :cond_b
    move v2, v3

    .line 286
    goto :goto_6
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0
    .param p1, "playList"    # [J

    .prologue
    .line 402
    return-void
.end method

.method protected onStateUpdate(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "playing":Z
    const/4 v1, 0x0

    .line 305
    .local v1, "stateChange":Z
    packed-switch p1, :pswitch_data_0

    .line 323
    :goto_0
    if-eqz v1, :cond_0

    .line 324
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v2, v0}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap1(Lmiui/maml/elements/MusicControlScreenElement;Z)V

    .line 302
    :cond_0
    return-void

    .line 308
    :pswitch_0
    const/4 v0, 0x0

    .line 309
    const/4 v1, 0x1

    .line 310
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string/jumbo v3, "state_stop"

    invoke-virtual {v2, v3}, Lmiui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :pswitch_1
    const/4 v0, 0x1

    .line 314
    const/4 v1, 0x1

    .line 315
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string/jumbo v3, "state_play"

    invoke-virtual {v2, v3}, Lmiui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->-wrap2(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
