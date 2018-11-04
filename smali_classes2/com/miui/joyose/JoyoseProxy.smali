.class public abstract Lcom/miui/joyose/JoyoseProxy;
.super Ljava/lang/Object;
.source "JoyoseProxy.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.xiaomi.joyose"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "content://com.xiaomi.joyose"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/joyose/JoyoseProxy;->CONTENT_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSceneWorkState(J)Z
    .locals 1
    .param p0, "scene"    # J

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public static getJoyoseSupportSceneList(Landroid/content/Context;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 27
    if-nez p0, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 29
    .local v0, "cr":Landroid/content/ContentResolver;
    const-wide/16 v6, 0x0

    .line 30
    .local v6, "sceneList":J
    sget-object v3, Lcom/miui/joyose/JoyoseProxy;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "scenemanager"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "typeUri":Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 32
    .local v8, "typeCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 33
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 34
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v6, v2

    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_2
    return-wide v6
.end method
