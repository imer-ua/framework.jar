.class public Lmiui/app/RemoveDuplicateContacts;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/RemoveDuplicateContacts$ContactsInfo;,
        Lmiui/app/RemoveDuplicateContacts$GroupsData;,
        Lmiui/app/RemoveDuplicateContacts$MergeContacts;,
        Lmiui/app/RemoveDuplicateContacts$RawContactData;,
        Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;
    }
.end annotation


# static fields
.field public static final CALLER_IS_REMOVE_DUPLICATE:Ljava/lang/String; = "caller_is_remove_duplicate"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z = false

.field private static final NAME_SELECTION:Ljava/lang/String; = "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

.field public static final TAG:Ljava/lang/String; = "RemoveDuplicateContacts"

.field private static final sGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOtherMimeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    .line 65
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/gender"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/bloodType"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/constellation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/animalSign"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/emotionStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/interest"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/hobby"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/degree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/schools"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/characteristic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/xiaomiId"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string/jumbo v1, "vnd.com.miui.cursor.item/lunarBirthday"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 11
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 192
    new-array v7, v10, [Ljava/lang/String;

    .line 193
    iget-object v8, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 196
    .local v7, "selectionArgs":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    invoke-static {p1, v7}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 199
    .local v3, "nameWithRawContactIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 201
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 202
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "name$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 205
    .local v4, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v10, :cond_0

    .line 209
    invoke-static {p1, v4, v1}, Lmiui/app/RemoveDuplicateContacts;->getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 212
    .local v5, "rawContactsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    if-eqz v5, :cond_0

    .line 213
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 218
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "name$iterator":Ljava/util/Iterator;
    .end local v4    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "rawContactsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    :cond_1
    return-object v6
.end method

.method private static getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/content/EntityIterator;"
        }
    .end annotation

    .prologue
    .local p1, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 385
    sget-object v1, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 385
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 388
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 389
    return-object v2

    .line 392
    :cond_0
    invoke-static {v6}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method

.method private static getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 14
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$GroupsData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 496
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 497
    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    .line 498
    const-string/jumbo v0, "title"

    aput-object v0, v2, v3

    .line 499
    const-string/jumbo v0, "sourceid"

    aput-object v0, v2, v5

    .line 501
    .local v2, "COLUMNS":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 502
    .local v7, "GROUP_ID":I
    const/4 v8, 0x1

    .line 503
    .local v8, "GROUP_TITLE":I
    const/4 v6, 0x2

    .line 504
    .local v6, "GROUPS_SOURCE_ID":I
    const-string/jumbo v13, "account_name = ? AND account_type = ? "

    .line 506
    .local v13, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    .line 507
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v3

    .line 509
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v9, "title,sourceid DESC"

    .line 510
    .local v9, "ORDER_BY":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "account_name = ? AND account_type = ? "

    const-string/jumbo v5, "title,sourceid DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 511
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v12, "groups":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    if-eqz v10, :cond_1

    .line 514
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    invoke-direct {v11}, Lmiui/app/RemoveDuplicateContacts$GroupsData;-><init>()V

    .line 516
    .local v11, "group":Lmiui/app/RemoveDuplicateContacts$GroupsData;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    .line 517
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    .line 518
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    .line 520
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 522
    .end local v11    # "group":Lmiui/app/RemoveDuplicateContacts$GroupsData;
    :catchall_0
    move-exception v0

    .line 523
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 522
    throw v0

    .line 523
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_1
    return-object v12
.end method

.method public static getMergeRawContacts([Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 30
    .param p0, "accounts"    # [Landroid/accounts/Account;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$MergeContacts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v24, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$MergeContacts;>;"
    const/4 v3, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v26, v3

    :goto_0
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    aget-object v11, p0, v26

    .line 646
    .local v11, "account":Landroid/accounts/Account;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 647
    iget-object v3, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v3, v25, v28

    iget-object v3, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v28, 0x1

    aput-object v3, v25, v28

    .line 650
    .local v25, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "RemoveDuplicateContacts"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "start scan raw_contact of account "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 655
    .local v19, "nameWithRawContactIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 657
    .local v12, "count":I
    if-nez v12, :cond_1

    .line 645
    :cond_0
    add-int/lit8 v3, v26, 0x1

    move/from16 v26, v3

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "name$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 662
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 664
    .local v22, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/16 v28, 0x2

    move/from16 v0, v28

    if-lt v3, v0, :cond_2

    .line 668
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v14

    .line 670
    .local v14, "entities":Landroid/content/EntityIterator;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v23, "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$ContactsInfo;>;"
    :goto_2
    :try_start_0
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 674
    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 675
    .local v15, "entity":Landroid/content/Entity;
    invoke-virtual {v15}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 677
    .local v16, "entityValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 678
    .local v9, "id":J
    const-wide/16 v4, 0x0

    .line 679
    .local v4, "photoId":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v7, "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v8, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "ncv$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 682
    .local v20, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 683
    .local v13, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "mimetype"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 684
    .local v17, "mimeType":Ljava/lang/String;
    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 685
    const-string/jumbo v3, "_id"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    .line 686
    :cond_4
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 687
    const-string/jumbo v3, "data1"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 695
    .end local v4    # "photoId":J
    .end local v7    # "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "id":J
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v15    # "entity":Landroid/content/Entity;
    .end local v16    # "entityValues":Landroid/content/ContentValues;
    .end local v17    # "mimeType":Ljava/lang/String;
    .end local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v21    # "ncv$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    .line 696
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 695
    throw v3

    .line 688
    .restart local v4    # "photoId":J
    .restart local v7    # "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "id":J
    .restart local v13    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "entity":Landroid/content/Entity;
    .restart local v16    # "entityValues":Landroid/content/ContentValues;
    .restart local v17    # "mimeType":Ljava/lang/String;
    .restart local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v21    # "ncv$iterator":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 689
    const-string/jumbo v3, "data1"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 693
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v17    # "mimeType":Ljava/lang/String;
    .end local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    :cond_6
    new-instance v3, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;

    invoke-direct/range {v3 .. v10}, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;-><init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 696
    .end local v4    # "photoId":J
    .end local v7    # "phones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "id":J
    .end local v15    # "entity":Landroid/content/Entity;
    .end local v16    # "entityValues":Landroid/content/ContentValues;
    .end local v21    # "ncv$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 699
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v3, v0, :cond_2

    .line 700
    new-instance v3, Lmiui/app/RemoveDuplicateContacts$MergeContacts;

    move-object/from16 v0, v23

    invoke-direct {v3, v0, v6}, Lmiui/app/RemoveDuplicateContacts$MergeContacts;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 705
    .end local v6    # "name":Ljava/lang/String;
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v12    # "count":I
    .end local v14    # "entities":Landroid/content/EntityIterator;
    .end local v18    # "name$iterator":Ljava/util/Iterator;
    .end local v19    # "nameWithRawContactIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v22    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v23    # "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$ContactsInfo;>;"
    .end local v25    # "selectionArgs":[Ljava/lang/String;
    :cond_8
    return-object v24
.end method

.method private static getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 225
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v8, "nameWithRawContactIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 228
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 229
    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v3

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v4

    .line 231
    const-string/jumbo v3, "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

    move-object v0, p0

    move-object v4, p1

    .line 227
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 234
    return-object v5

    .line 238
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 242
    .local v10, "rawContactId":J
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 244
    .local v9, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v9, :cond_1

    .line 245
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .restart local v9    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "rawContactId":J
    :catchall_0
    move-exception v0

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 253
    throw v0

    .line 250
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v10    # "rawContactId":J
    :cond_1
    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v10    # "rawContactId":J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    return-object v8
.end method

.method private static getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 33
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v30

    if-nez v30, :cond_1

    .line 264
    :cond_0
    const/16 v30, 0x0

    return-object v30

    .line 267
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 269
    .local v28, "start":J
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 270
    .local v7, "entities":Landroid/content/EntityIterator;
    if-nez v7, :cond_2

    .line 271
    const/16 v30, 0x0

    return-object v30

    .line 274
    :cond_2
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v25, "rawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    .line 278
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    .line 280
    .local v12, "entity":Landroid/content/Entity;
    new-instance v22, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-direct/range {v22 .. v22}, Lmiui/app/RemoveDuplicateContacts$RawContactData;-><init>()V

    .line 281
    .local v22, "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    invoke-virtual {v12}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    .line 283
    .local v13, "entityValues":Landroid/content/ContentValues;
    const-string/jumbo v30, "_id"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, v22

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setRawContactId(J)V

    .line 284
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    iput-object v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    .line 285
    const-string/jumbo v30, "sourceid"

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    .line 287
    invoke-virtual {v12}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "ncv$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 288
    .local v20, "ncv":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 289
    .local v4, "cv":Landroid/content/ContentValues;
    const-string/jumbo v30, "mimetype"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 292
    .local v18, "mimeType":Ljava/lang/String;
    const-string/jumbo v30, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 293
    const-string/jumbo v30, "_id"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, v22

    iput-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mPhotoId:J

    .line 295
    const-string/jumbo v30, "data14"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_4

    const/16 v30, 0x64

    :goto_2
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 317
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v12    # "entity":Landroid/content/Entity;
    .end local v13    # "entityValues":Landroid/content/ContentValues;
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v21    # "ncv$iterator":Ljava/util/Iterator;
    .end local v22    # "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :catch_0
    move-exception v6

    .line 318
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v30, "RemoveDuplicateContacts"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "getNeedDeletedRawContacts(): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 324
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 329
    .local v8, "end":J
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 331
    .local v19, "n":I
    const/16 v30, 0x2

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    .line 332
    const/16 v30, 0x0

    return-object v30

    .line 296
    .end local v8    # "end":J
    .end local v19    # "n":I
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "entity":Landroid/content/Entity;
    .restart local v13    # "entityValues":Landroid/content/ContentValues;
    .restart local v18    # "mimeType":Ljava/lang/String;
    .restart local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v21    # "ncv$iterator":Ljava/util/Iterator;
    .restart local v22    # "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :cond_4
    const/16 v30, 0xa

    goto :goto_2

    .line 297
    :cond_5
    :try_start_2
    const-string/jumbo v30, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 298
    const-string/jumbo v30, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 299
    .local v14, "groupId":J
    sget-object v30, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 300
    .local v27, "title":Ljava/lang/String;
    if-nez v27, :cond_6

    const-string/jumbo v27, ""

    .end local v27    # "title":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 320
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v12    # "entity":Landroid/content/Entity;
    .end local v13    # "entityValues":Landroid/content/ContentValues;
    .end local v14    # "groupId":J
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    .end local v21    # "ncv$iterator":Ljava/util/Iterator;
    .end local v22    # "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :catchall_0
    move-exception v30

    .line 321
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 320
    throw v30

    .line 301
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v12    # "entity":Landroid/content/Entity;
    .restart local v13    # "entityValues":Landroid/content/ContentValues;
    .restart local v18    # "mimeType":Ljava/lang/String;
    .restart local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    .restart local v21    # "ncv$iterator":Ljava/util/Iterator;
    .restart local v22    # "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :cond_7
    :try_start_3
    const-string/jumbo v30, "vnd.android.cursor.item/im"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 302
    const-string/jumbo v30, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "data":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 304
    .end local v5    # "data":Ljava/lang/String;
    :cond_8
    const-string/jumbo v30, "vnd.android.cursor.item/name"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 305
    sget-object v30, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 306
    const-string/jumbo v30, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "data":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 308
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    .end local v5    # "data":Ljava/lang/String;
    :cond_9
    const-string/jumbo v30, "RemoveDuplicateContacts"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "ignore unknown mimetype "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 315
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v20    # "ncv":Landroid/content/Entity$NamedContentValues;
    :cond_a
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 321
    .end local v12    # "entity":Landroid/content/Entity;
    .end local v13    # "entityValues":Landroid/content/ContentValues;
    .end local v21    # "ncv$iterator":Ljava/util/Iterator;
    .end local v22    # "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :cond_b
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_3

    .line 335
    .restart local v8    # "end":J
    .restart local v19    # "n":I
    :cond_c
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v26, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    .line 339
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    .line 341
    .local v23, "rawContactA":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    invoke-virtual/range {v23 .. v23}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v30

    if-eqz v30, :cond_e

    .line 338
    :cond_d
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 345
    :cond_e
    add-int/lit8 v17, v16, 0x1

    .local v17, "j":I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 346
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    .line 348
    .local v24, "rawContactB":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    invoke-virtual/range {v24 .. v24}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v30

    if-eqz v30, :cond_10

    .line 345
    :cond_f
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 353
    :cond_10
    invoke-virtual/range {v23 .. v24}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->compare(Lmiui/app/RemoveDuplicateContacts$RawContactData;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 354
    move-object/from16 v0, v24

    iget-object v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    move-object/from16 v30, v0

    if-nez v30, :cond_11

    .line 356
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 357
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 358
    :cond_11
    move-object/from16 v0, v23

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_12

    .line 360
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 361
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 362
    :cond_12
    move-object/from16 v0, v23

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v30, v0

    move-object/from16 v0, v24

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 363
    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 364
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 367
    :cond_13
    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 368
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 375
    .end local v17    # "j":I
    .end local v23    # "rawContactA":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    .end local v24    # "rawContactB":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 379
    .local v10, "end1":J
    return-object v26
.end method

.method public static declared-synchronized remove([Landroid/accounts/Account;Landroid/content/ContentResolver;Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;Z)I
    .locals 26
    .param p0, "accounts"    # [Landroid/accounts/Account;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;
    .param p3, "auto"    # Z

    .prologue
    const-class v20, Lmiui/app/RemoveDuplicateContacts;

    monitor-enter v20

    .line 107
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    const/16 v19, 0x0

    monitor-exit v20

    return v19

    .line 111
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 112
    .local v16, "start":J
    const/4 v15, 0x0

    .line 114
    .local v15, "result":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v11, "needDeleted":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    if-eqz p2, :cond_2

    .line 117
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    .line 120
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v4, p0, v19

    .line 121
    .local v4, "account":Landroid/accounts/Account;
    sget-object v22, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 122
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v10

    .line 123
    .local v10, "groups":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    .line 124
    .local v8, "group":Lmiui/app/RemoveDuplicateContacts$GroupsData;
    sget-object v22, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    iget-wide v0, v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    iget-object v0, v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v4    # "account":Landroid/accounts/Account;
    .end local v8    # "group":Lmiui/app/RemoveDuplicateContacts$GroupsData;
    .end local v9    # "group$iterator":Ljava/util/Iterator;
    .end local v10    # "groups":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    .end local v11    # "needDeleted":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    .end local v15    # "result":I
    .end local v16    # "start":J
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 127
    .restart local v4    # "account":Landroid/accounts/Account;
    .restart local v9    # "group$iterator":Ljava/util/Iterator;
    .restart local v10    # "groups":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    .restart local v11    # "needDeleted":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    .restart local v15    # "result":I
    .restart local v16    # "start":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lmiui/app/RemoveDuplicateContacts;->getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 130
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v9    # "group$iterator":Ljava/util/Iterator;
    .end local v10    # "groups":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    :cond_4
    if-eqz v11, :cond_c

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 131
    new-instance v5, Lmiui/provider/BatchOperation;

    .line 132
    const-string/jumbo v19, "com.android.contacts"

    .line 131
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 134
    .local v5, "batchOperation":Lmiui/provider/BatchOperation;
    if-eqz p2, :cond_5

    .line 135
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    .line 139
    :cond_5
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "rawContact$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    .line 140
    .local v13, "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    sget-object v19, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 141
    iget-wide v0, v13, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    move-wide/from16 v22, v0

    .line 140
    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 142
    const-string/jumbo v21, "caller_is_remove_duplicate"

    const-string/jumbo v22, "true"

    .line 140
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    .line 143
    .local v18, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 146
    .local v12, "operation":Landroid/content/ContentProviderOperation;
    iget-object v0, v13, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    .line 148
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 149
    const-string/jumbo v21, "caller_is_syncadapter"

    .line 150
    const-string/jumbo v22, "true"

    .line 148
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 147
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 156
    .end local v12    # "operation":Landroid/content/ContentProviderOperation;
    :cond_6
    :goto_3
    if-eqz v12, :cond_7

    .line 157
    invoke-virtual {v5, v12}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 160
    :cond_7
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v19

    const/16 v21, 0x64

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 161
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 164
    :cond_8
    if-eqz p2, :cond_9

    .line 165
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onProgress(I)V

    .line 168
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 151
    .restart local v12    # "operation":Landroid/content/ContentProviderOperation;
    :cond_a
    if-nez p3, :cond_6

    .line 153
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .local v12, "operation":Landroid/content/ContentProviderOperation;
    goto :goto_3

    .line 171
    .end local v12    # "operation":Landroid/content/ContentProviderOperation;
    .end local v13    # "rawContact":Lmiui/app/RemoveDuplicateContacts$RawContactData;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_b
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v19

    if-lez v19, :cond_c

    .line 172
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 176
    .end local v5    # "batchOperation":Lmiui/provider/BatchOperation;
    .end local v14    # "rawContact$iterator":Ljava/util/Iterator;
    :cond_c
    if-eqz p2, :cond_d

    .line 177
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onEnd(Z)V

    .line 180
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .local v6, "end":J
    monitor-exit v20

    .line 186
    return v15
.end method

.method public static removeGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)V
    .locals 38
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 538
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v20

    .line 540
    .local v20, "groups":Ljava/util/List;, "Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 541
    return-void

    .line 544
    :cond_0
    const-string/jumbo v34, "mimetype=? AND data1=?"

    .line 546
    .local v34, "where":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 548
    .local v18, "groupId":J
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_4

    .line 549
    if-nez v21, :cond_1

    .line 550
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v18, v0

    .line 548
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 552
    :cond_1
    add-int/lit8 v2, v21, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 553
    .local v27, "previousTitle":Ljava/lang/String;
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 554
    .local v32, "title":Ljava/lang/String;
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v22, v0

    .line 555
    .local v22, "id":J
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 557
    .local v31, "sourceId":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .line 561
    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    .line 563
    .local v6, "selectionArgs":[Ljava/lang/String;
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 564
    .local v33, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "data1"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mimetype=? AND data1=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 566
    const-string/jumbo v2, "RemoveDuplicateContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update contacts group from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v17, 0x0

    .line 570
    .local v17, "groupUri":Landroid/net/Uri;
    if-nez v31, :cond_2

    .line 572
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 571
    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 574
    const-string/jumbo v3, "caller_is_syncadapter"

    .line 575
    const-string/jumbo v5, "true"

    .line 571
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    .line 579
    .local v17, "groupUri":Landroid/net/Uri;
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 580
    const-string/jumbo v2, "RemoveDuplicateContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete group "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 577
    .local v17, "groupUri":Landroid/net/Uri;
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .local v17, "groupUri":Landroid/net/Uri;
    goto :goto_2

    .line 582
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v17    # "groupUri":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v18, v0

    goto/16 :goto_1

    .line 590
    .end local v22    # "id":J
    .end local v27    # "previousTitle":Ljava/lang/String;
    .end local v31    # "sourceId":Ljava/lang/String;
    .end local v32    # "title":Ljava/lang/String;
    :cond_4
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v20

    .line 592
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 593
    .local v30, "rawContactIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 595
    .local v14, "deleteDataId":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "raw_contact_id"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 596
    .local v4, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 597
    .local v8, "DATA_ID":I
    const/4 v9, 0x1

    .line 599
    .local v9, "RAW_CONTACT_ID":I
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "group$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    .line 600
    .local v15, "group":Lmiui/app/RemoveDuplicateContacts$GroupsData;
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->clear()V

    .line 601
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .line 602
    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    const/4 v3, 0x0

    aput-object v2, v6, v3

    iget-wide v2, v15, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    .line 603
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "mimetype=? AND data1=?"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 605
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 607
    :goto_4
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 608
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 609
    .local v12, "dataId":J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 612
    .local v28, "rawContactId":J
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 618
    .end local v12    # "dataId":J
    .end local v28    # "rawContactId":J
    :catchall_0
    move-exception v2

    .line 619
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 618
    throw v2

    .line 615
    .restart local v12    # "dataId":J
    .restart local v28    # "rawContactId":J
    :cond_6
    :try_start_1
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 619
    .end local v12    # "dataId":J
    .end local v28    # "rawContactId":J
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 625
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "group":Lmiui/app/RemoveDuplicateContacts$GroupsData;
    :cond_8
    new-instance v26, Lmiui/provider/BatchOperation;

    const-string/jumbo v2, "com.android.contacts"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 626
    .local v26, "operations":Lmiui/provider/BatchOperation;
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "id$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 628
    .local v24, "id":Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 627
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 629
    .local v10, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 631
    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_9

    .line 632
    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_5

    .line 636
    .end local v10    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v24    # "id":Ljava/lang/Long;
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 637
    invoke-virtual/range {v26 .. v26}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 537
    :cond_b
    return-void
.end method
