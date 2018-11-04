.class public Lmiui/app/RemoveDuplicateContacts$RawContactData;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/RemoveDuplicateContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawContactData"
.end annotation


# static fields
.field public static final HAS_DISPLAY_PHOTO:I = 0x64

.field public static final HAS_PHOTO:I = 0xa


# instance fields
.field private mDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeleted:Z

.field public mN:I

.field public mName:Ljava/lang/String;

.field public mPhotoId:J

.field public mRawContactId:J

.field public mSourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    .line 395
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 427
    if-nez p2, :cond_0

    .line 428
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 432
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .restart local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public compare(Lmiui/app/RemoveDuplicateContacts$RawContactData;)Z
    .locals 12
    .param p1, "another"    # Lmiui/app/RemoveDuplicateContacts$RawContactData;

    .prologue
    const/4 v11, 0x0

    .line 444
    if-nez p1, :cond_0

    .line 445
    return v11

    .line 448
    :cond_0
    iget-object v9, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    iget-object v10, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 449
    return v11

    .line 452
    :cond_1
    iget-object v9, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimeType$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 453
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v9, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 454
    return v11

    .line 457
    :cond_3
    iget-object v9, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 458
    .local v0, "dataListA":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v1, "dataListB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 462
    return v11

    .line 465
    :cond_4
    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 466
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "numberA$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 467
    .local v5, "numberA":Ljava/lang/String;
    const/4 v4, 0x0

    .line 468
    .local v4, "number":Ljava/lang/String;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "numberB$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 469
    .local v7, "numberB":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 470
    move-object v4, v7

    .line 478
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "numberB":Ljava/lang/String;
    :cond_6
    :goto_1
    if-nez v4, :cond_8

    .line 479
    return v11

    .line 472
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v7    # "numberB":Ljava/lang/String;
    :cond_7
    invoke-static {v5, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 473
    move-object v4, v7

    .line 474
    .local v4, "number":Ljava/lang/String;
    goto :goto_1

    .line 481
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "numberB":Ljava/lang/String;
    :cond_8
    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    .end local v5    # "numberA":Ljava/lang/String;
    .end local v6    # "numberA$iterator":Ljava/util/Iterator;
    .end local v8    # "numberB$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 486
    return v11

    .line 491
    .end local v0    # "dataListA":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "dataListB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x1

    return v9
.end method

.method public getDatas()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDatas:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDeleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mDeleted:Z

    .line 414
    return-void
.end method

.method public setRawContactId(J)V
    .locals 1
    .param p1, "rawContactId"    # J

    .prologue
    .line 423
    iput-wide p1, p0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    .line 422
    return-void
.end method
