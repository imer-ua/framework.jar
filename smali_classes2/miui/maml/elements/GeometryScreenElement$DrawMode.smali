.class public final enum Lmiui/maml/elements/GeometryScreenElement$DrawMode;
.super Ljava/lang/Enum;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GeometryScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/elements/GeometryScreenElement$DrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum FILL:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_CENTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    new-instance v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    const-string/jumbo v1, "STROKE_CENTER"

    invoke-direct {v0, v1, v2}, Lmiui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .line 157
    new-instance v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    const-string/jumbo v1, "STROKE_OUTER"

    invoke-direct {v0, v1, v3}, Lmiui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .line 159
    new-instance v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    const-string/jumbo v1, "STROKE_INNER"

    invoke-direct {v0, v1, v4}, Lmiui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .line 161
    new-instance v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    const-string/jumbo v1, "FILL"

    invoke-direct {v0, v1, v5}, Lmiui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .line 154
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getStrokeAlign(Ljava/lang/String;)Lmiui/maml/elements/GeometryScreenElement$DrawMode;
    .locals 1
    .param p0, "strMode"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v0, "inner"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    return-object v0

    .line 166
    :cond_0
    const-string/jumbo v0, "center"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    return-object v0

    .line 169
    :cond_1
    sget-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/elements/GeometryScreenElement$DrawMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    const-class v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    return-object v0
.end method

.method public static values()[Lmiui/maml/elements/GeometryScreenElement$DrawMode;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    return-object v0
.end method
