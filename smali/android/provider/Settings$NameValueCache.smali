.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1562
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1561
    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    .line 1556
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;

    .prologue
    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 1569
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1580
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 1581
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 1582
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 1579
    return-void
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1586
    const/4 v0, 0x0

    .line 1587
    .local v0, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    .line 1588
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1589
    .local v0, "cp":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 1590
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cp":Landroid/content/IContentProvider;
    .local v1, "cp":Landroid/content/IContentProvider;
    move-object v0, v1

    .end local v1    # "cp":Landroid/content/IContentProvider;
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_0
    monitor-exit p0

    .line 1593
    return-object v0

    .line 1587
    .end local v0    # "cp":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method synthetic -android_provider_Settings$NameValueCache_lambda$1()V
    .locals 3

    .prologue
    .line 1690
    monitor-enter p0

    .line 1691
    :try_start_0
    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "Error accessing generation tracker - removing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v1, :cond_0

    .line 1694
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 1696
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 1697
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 1698
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 0
    return-void

    .line 1690
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 22
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1612
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    const/16 v19, 0x1

    .line 1614
    .local v19, "isSelf":Z
    :goto_0
    const/4 v15, -0x1

    .line 1615
    .local v15, "currentGeneration":I
    if-eqz v19, :cond_2

    .line 1616
    monitor-enter p0

    .line 1617
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_1

    .line 1618
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1624
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1629
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_1

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    :cond_1
    monitor-exit p0

    .line 1640
    :cond_2
    invoke-direct/range {p0 .. p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 1646
    .local v2, "cp":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1648
    const/4 v10, 0x0

    .line 1649
    .local v10, "args":Landroid/os/Bundle;
    if-nez v19, :cond_12

    .line 1650
    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1651
    .local v11, "args":Landroid/os/Bundle;
    :try_start_2
    const-string/jumbo v3, "_user"

    .end local v10    # "args":Landroid/os/Bundle;
    move/from16 v0, p3

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1653
    :goto_1
    const/16 v20, 0x0

    .line 1654
    .local v20, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1655
    if-eqz v19, :cond_8

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v3, :cond_8

    .line 1656
    const/16 v20, 0x1

    .line 1657
    if-nez v11, :cond_11

    .line 1658
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1660
    .end local v11    # "args":Landroid/os/Bundle;
    .local v10, "args":Landroid/os/Bundle;
    :goto_2
    :try_start_4
    const-string/jumbo v3, "_track_generation"

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :goto_3
    :try_start_5
    monitor-exit p0

    .line 1668
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v4, v0, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 1669
    .local v13, "b":Landroid/os/Bundle;
    if-eqz v13, :cond_9

    .line 1670
    const-string/jumbo v3, "value"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1672
    .local v21, "value":Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 1673
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1674
    if-eqz v20, :cond_3

    .line 1676
    :try_start_6
    const-string/jumbo v3, "_track_generation"

    .line 1675
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/util/MemoryIntArray;

    .line 1678
    .local v12, "array":Landroid/util/MemoryIntArray;
    const-string/jumbo v3, "_generation_index"

    const/4 v4, -0x1

    .line 1677
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1679
    .local v18, "index":I
    if-eqz v12, :cond_3

    if-ltz v18, :cond_3

    .line 1681
    const-string/jumbo v3, "_generation"

    const/4 v4, 0x0

    .line 1680
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1688
    .local v17, "generation":I
    new-instance v3, Landroid/provider/Settings$GenerationTracker;

    .line 1689
    new-instance v4, Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    .line 1688
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v3, v12, v0, v1, v4}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 1706
    .end local v12    # "array":Landroid/util/MemoryIntArray;
    .end local v17    # "generation":I
    .end local v18    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_4

    .line 1707
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v3

    .line 1706
    if-ne v15, v3, :cond_4

    .line 1708
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1717
    :cond_5
    return-object v21

    .line 1612
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v15    # "currentGeneration":I
    .end local v19    # "isSelf":Z
    .end local v20    # "needsGenerationTracker":Z
    .end local v21    # "value":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1625
    .restart local v15    # "currentGeneration":I
    .restart local v19    # "isSelf":Z
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1616
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v11    # "args":Landroid/os/Bundle;
    .restart local v20    # "needsGenerationTracker":Z
    :cond_8
    move-object v10, v11

    .line 1655
    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto/16 :goto_3

    .line 1654
    .end local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    :goto_4
    :try_start_9
    monitor-exit p0

    throw v3
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1721
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v20    # "needsGenerationTracker":Z
    :catch_0
    move-exception v16

    .line 1727
    :cond_9
    :goto_5
    const/4 v14, 0x0

    .line 1729
    .local v14, "c":Landroid/database/Cursor;
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v6, "name=?"

    .line 1730
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1729
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 1731
    .local v14, "c":Landroid/database/Cursor;
    if-nez v14, :cond_b

    .line 1732
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1733
    const/4 v3, 0x0

    .line 1755
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1733
    :cond_a
    return-object v3

    .line 1673
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local v10    # "args":Landroid/os/Bundle;
    .restart local v13    # "b":Landroid/os/Bundle;
    .restart local v20    # "needsGenerationTracker":Z
    .restart local v21    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_b
    monitor-exit p0

    throw v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    .line 1736
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v20    # "needsGenerationTracker":Z
    .end local v21    # "value":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_b
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1737
    :goto_6
    monitor-enter p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1740
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_c

    .line 1741
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v3

    if-ne v15, v3, :cond_c

    .line 1742
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_c
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1755
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1750
    :cond_d
    return-object v21

    .line 1736
    :cond_e
    const/16 v21, 0x0

    .local v21, "value":Ljava/lang/String;
    goto :goto_6

    .line 1737
    .end local v21    # "value":Ljava/lang/String;
    :catchall_3
    move-exception v3

    :try_start_f
    monitor-exit p0

    throw v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1751
    .end local v14    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v16

    .line 1752
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1753
    const/4 v3, 0x0

    .line 1755
    if-eqz v14, :cond_f

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1753
    :cond_f
    return-object v3

    .line 1754
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_4
    move-exception v3

    .line 1755
    if-eqz v14, :cond_10

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1754
    :cond_10
    throw v3

    .line 1721
    .restart local v11    # "args":Landroid/os/Bundle;
    :catch_2
    move-exception v16

    .restart local v16    # "e":Landroid/os/RemoteException;
    move-object v10, v11

    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto/16 :goto_5

    .line 1654
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v20    # "needsGenerationTracker":Z
    :catchall_5
    move-exception v3

    goto/16 :goto_4

    .end local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    :cond_11
    move-object v10, v11

    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto/16 :goto_2

    .end local v20    # "needsGenerationTracker":Z
    .local v10, "args":Landroid/os/Bundle;
    :cond_12
    move-object v11, v10

    .restart local v11    # "args":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 1599
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1600
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string/jumbo v3, "_user"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1602
    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1603
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    const/4 v3, 0x1

    return v3

    .line 1604
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    :catch_0
    move-exception v2

    .line 1605
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1606
    const/4 v3, 0x0

    return v3
.end method
