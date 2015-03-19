.class Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;
.super Ljava/lang/Object;
.source "ExpandedShortCutView.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected()V
    .locals 4

    .prologue
    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #getter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClient:Landroid/dolby/DsClient;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$000(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)Landroid/dolby/DsClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/dolby/DsClient;->getDsVersion()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, version:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    const/4 v3, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$102(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1           #version:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateDolbyStateUI()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$300(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    .line 182
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->unbindDsClient()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$200(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    goto :goto_0
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->mDsClientConnected:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$102(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;Z)Z

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateDolbyStateUI()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$300(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    .line 188
    return-void
.end method

.method public onDsOn(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView$1;->this$0:Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;

    #calls: Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->updateDolbyStateUI()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;->access$300(Lcom/android/systemui/statusbar/phone/ExpandedShortCutView;)V

    .line 193
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 0
    .parameter "profile"
    .parameter "preset"

    .prologue
    .line 213
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0
    .parameter "profile"
    .parameter "name"

    .prologue
    .line 205
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 197
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 201
    return-void
.end method
