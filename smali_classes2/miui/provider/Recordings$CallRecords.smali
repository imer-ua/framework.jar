.class public Lmiui/provider/Recordings$CallRecords;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallRecords"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Recordings$CallRecords$Columns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "call_records"

.field public static final URI_PATH:Ljava/lang/String; = "call_records"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 553
    const-string/jumbo v0, "content://records/call_records"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings$CallRecords;->CONTENT_URI:Landroid/net/Uri;

    .line 550
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
