.class public Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.super Lcom/android/systemui/statusbar/policy/NetworkController;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;
    }
.end annotation


# instance fields
.field private mCarrierTextSub:[Ljava/lang/CharSequence;

.field private mDefaultSubscription:I

.field mIsLastRoaming:[Z

.field mIsRoaming:[Z

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataTypeIconId:[I

.field private mMSimIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataConnected:[Z

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastPhoneSignalIconId:[[I

.field mMSimLastServiceState:[Landroid/telephony/ServiceState;

.field mMSimLastSimIconId:[I

.field mMSimLastcombinedActivityIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mNoMSimIconId:[I

.field private mPhone:Landroid/telephony/MSimTelephonyManager;

.field mPlmn:[Ljava/lang/String;

.field mShowPlmn:[Z

.field mShowSpn:[Z

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSpn:[Ljava/lang/String;

.field mSubsLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSubsLabelViews:Ljava/util/ArrayList;

    .line 144
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 145
    .local v2, numPhones:I
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 146
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    .line 147
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 148
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastServiceState:[Landroid/telephony/ServiceState;

    .line 149
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 150
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimIconId:[I

    .line 151
    filled-new-array {v2, v7}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    .line 152
    filled-new-array {v2, v7}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    .line 153
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    .line 154
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    .line 155
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    .line 156
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 157
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    .line 158
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    .line 159
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    .line 160
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataConnected:[Z

    .line 161
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    .line 162
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsLastRoaming:[Z

    .line 163
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    .line 164
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    .line 165
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    .line 166
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    .line 167
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    .line 168
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    .line 169
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastcombinedActivityIconId:[I

    .line 170
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    .line 171
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 172
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 173
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    .line 174
    new-array v3, v2, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    .line 175
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    .line 176
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    .line 177
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    .line 178
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v0

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    .line 183
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    .line 184
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v0

    .line 186
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v7, :cond_0

    .line 187
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, v0

    const v4, 0x7f020319

    aput v4, v3, v1

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v3, v3, v0

    aput v6, v3, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataConnected:[Z

    aput-boolean v5, v3, v0

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aput-boolean v5, v3, v0

    .line 193
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsLastRoaming:[Z

    aput-boolean v5, v3, v0

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v5, v3, v0

    .line 195
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aput v6, v3, v0

    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v5, v3, v0

    .line 197
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aput v6, v3, v0

    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aput v6, v3, v0

    .line 199
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aput v5, v3, v0

    .line 200
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aput v5, v3, v0

    .line 201
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastcombinedActivityIconId:[I

    aput v5, v3, v0

    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aput v5, v3, v0

    .line 203
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aput v5, v3, v0

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 205
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    const/4 v4, 0x1

    aput v4, v3, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v1           #j:I
    :cond_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 210
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 211
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 212
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 215
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 217
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    aget v3, v3, v5

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 219
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    aget v3, v3, v5

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 221
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 224
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoSimIconId:I

    .line 226
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 227
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 229
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 232
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 233
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 234
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateIconSet(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method private getNetworkType(I)I
    .locals 4
    .parameter

    .prologue
    .line 1565
    const-string v0, ""

    .line 1566
    const/4 v1, 0x4

    .line 1568
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1574
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1575
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1576
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1577
    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1581
    :goto_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkType subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    return v0

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1572
    const-string v0, ""

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 489
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 578
    .local v0, mMSimPhoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private hasLte(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    const/16 v4, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1556
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1557
    .local v0, type:I
    if-eqz v0, :cond_2

    .line 1558
    if-ne v0, v4, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1558
    goto :goto_0

    .line 1560
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private hasService(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 649
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 655
    :pswitch_0
    const/4 v1, 0x1

    .line 658
    :cond_0
    :pswitch_1
    return v1

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCarrierTextDouble()V
    .locals 6

    .prologue
    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, carrierName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 470
    .local v2, v:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v2           #v:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setCarrierTextSingle(I)V
    .locals 4
    .parameter "SUB"

    .prologue
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, carrierName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 477
    .local v1, v:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    return-void
.end method

.method private updateCarrierText(I)V
    .locals 4
    .parameter "sub"

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, textResId:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 400
    const v0, 0x7f0a00e5

    .line 440
    :goto_0
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 443
    :cond_0
    return-void

    .line 403
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 435
    const v0, 0x104031b

    goto :goto_0

    .line 410
    :pswitch_0
    if-nez p1, :cond_2

    .line 411
    const v0, 0x7f0a00e4

    goto :goto_0

    .line 413
    :cond_2
    const v0, 0x104031b

    .line 415
    goto :goto_0

    .line 417
    :pswitch_1
    const v0, 0x104032b

    .line 418
    goto :goto_0

    .line 420
    :pswitch_2
    const v0, 0x1040329

    .line 421
    goto :goto_0

    .line 424
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    .line 425
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCarrierTextSub ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 428
    :pswitch_4
    const v0, 0x104031f

    .line 430
    goto/16 :goto_0

    .line 432
    :pswitch_5
    const v0, 0x1040327

    .line 433
    goto/16 :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 913
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataIcon subscription ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v1, 0x1

    .line 917
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    .line 918
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon dataSub ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    if-eq p1, v2, :cond_0

    .line 921
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v0, v1, p1

    .line 922
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataIconi: SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not DDS.  Clear the mMSimDataConnected Flag and return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_0
    return-void

    .line 927
    :cond_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon  when SimState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v2, :cond_1

    move v1, v0

    .line 960
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aput v1, v2, p1

    .line 961
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aput v1, v2, p1

    .line 962
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v0, v1, p1

    .line 964
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataIcon when mMSimDataConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimMobileActivityIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 932
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon  when gsm mMSimState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_4

    .line 936
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v6, :cond_3

    .line 937
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v0, v0, p1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v0

    .line 939
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aput v0, v2, p1

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_3
    move v1, v0

    .line 942
    goto/16 :goto_1

    .line 945
    :cond_4
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "updateDataIcon when no sim"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNoSimIcon(I)I

    move-result v1

    goto/16 :goto_1

    .line 951
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v6, :cond_6

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v0, v0, p1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataActivity(II)I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_6
    move v1, v0

    .line 956
    goto/16 :goto_1
.end method

.method private final updateDataNetType(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0200ff

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 823
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    .line 824
    if-eq p1, v2, :cond_1

    .line 825
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataNetType: SUB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not DDS(=SUB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v1, v3, p1

    .line 851
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 852
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 853
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v6, v1, p1

    .line 861
    :goto_1
    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 862
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 864
    :cond_0
    return-void

    .line 829
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v3, v3, p1

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 830
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v3, :cond_2

    .line 832
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v4, 0x7f0200f9

    aput v4, v3, p1

    .line 833
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v5, 0x7f0a008c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 835
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_0

    .line 837
    :cond_2
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataNetType sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataNetType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeIcon(I)I

    move-result v4

    aput v4, v3, p1

    .line 841
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getDataTypeDesc()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 843
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getQSDataTypeIcon(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 845
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataNetType, mQSDataTypeIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 857
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v6, v1, p1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_1
.end method

.method private updateIconSet(I)V
    .locals 6
    .parameter

    .prologue
    .line 883
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIconSet, subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 886
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIconSet, voice network type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data network type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    if-nez v0, :cond_0

    .line 894
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, chosenNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspaDataDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showAtLeastThreeGees="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShow4GforLTE:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 900
    return-void

    :cond_0
    move v1, v0

    .line 891
    goto :goto_0
.end method

.method private updateNetworkName(Ljava/lang/String;I)V
    .locals 2
    .parameter "networkName"
    .parameter "subscription"

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    aput-object v1, v0, p2

    .line 1052
    return-void
.end method

.method private final updateSimIcon(I)V
    .locals 3
    .parameter

    .prologue
    .line 903
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getNoSimIcon(I)I

    move-result v1

    aput v1, v0, p1

    .line 909
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 910
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v4, -0x1

    const v6, 0x7f020319

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 663
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTelephonySignalStrength: subscription ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v7

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_network_mode"

    invoke-static {v0, v2, p1}, Landroid/telephony/MSimTelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 675
    :goto_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength  networkMode1---> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrengthNow   service is ---> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "servicestate is  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_2

    .line 680
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v2, " No service"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_1
    if-ge v1, v8, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aput v6, v0, v1

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 672
    :catch_0
    move-exception v0

    move v0, v1

    .line 673
    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v6, v0, p1

    .line 685
    if-ne v7, p1, :cond_1

    const v0, 0x7f020089

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 814
    :cond_1
    :goto_2
    return-void

    .line 688
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-nez v2, :cond_5

    .line 690
    :cond_3
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Null object, mMSimSignalStrength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMSimServiceState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 695
    :goto_3
    if-ge v0, v8, :cond_4

    .line 696
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v2, p1

    aput v6, v2, v0

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 698
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v6, v0, p1

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 702
    if-ne v7, p1, :cond_1

    .line 703
    const v0, 0x7f020089

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto :goto_2

    .line 709
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 710
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    .line 711
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aput-boolean v11, v3, p1

    .line 713
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The sub"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in roaming state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 720
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    .line 721
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aput-boolean v11, v3, p1

    .line 723
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The sub"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in CDMA roaming state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 727
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_f

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 729
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 730
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    aget v4, v2, v0

    aput v4, v3, v1

    .line 732
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    aput v1, v3, v11

    .line 761
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getNetworkType(I)I

    move-result v3

    .line 762
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength cdma Qualcomm getNetworkType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-nez p1, :cond_a

    .line 765
    const/4 v4, 0x5

    if-eq v3, v4, :cond_7

    if-ne v3, v11, :cond_8

    .line 766
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v4, v4, p1

    aput v1, v4, v11

    .line 769
    :cond_8
    const/4 v4, 0x6

    if-eq v3, v4, :cond_9

    const/16 v4, 0xb

    if-eq v3, v4, :cond_9

    const/16 v4, 0x29

    if-ne v3, v4, :cond_a

    .line 770
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    aput v1, v3, v1

    .line 776
    :cond_a
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlwaysShowCdmaRssi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to cdmaLevel= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of level= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    .line 784
    invoke-static {v3}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    .line 785
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getGsmLevel(Landroid/telephony/SignalStrength;)I

    move-result v4

    .line 786
    if-nez v3, :cond_b

    if-ne p1, v11, :cond_c

    .line 787
    :cond_b
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength  isGSM = true gsmlevel ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    aget v2, v2, v4

    aput v2, v3, v1

    .line 789
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v2, p1

    aput v1, v2, v11

    .line 796
    :cond_c
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->DATA_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    aput v3, v2, p1

    .line 798
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 801
    if-ne v7, p1, :cond_d

    .line 802
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 806
    :cond_d
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength, sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mInetCondition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mMSimPhoneSignalIconId["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    aget v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 716
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aput-boolean v1, v2, p1

    .line 717
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIconsCT;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    goto/16 :goto_4

    .line 735
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasLte(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 736
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteLevel(Landroid/telephony/SignalStrength;)I

    move-result v3

    .line 738
    :goto_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v6

    .line 739
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v5

    .line 740
    const-string v8, "StatusBar.MSimNetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateTelephonySignalStrength cdmaLevel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " evdoLevel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v8, 0x6

    if-ne v0, v8, :cond_10

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aput v1, v0, v1

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v3, v2, v5

    aput v3, v0, v11

    .line 756
    :goto_8
    if-eqz v5, :cond_12

    move v0, v5

    goto/16 :goto_5

    .line 746
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v8, v2, v6

    aput v8, v0, v1

    .line 747
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasLte(I)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eq v3, v4, :cond_11

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v3, v2, v3

    aput v3, v0, v11

    goto :goto_8

    .line 751
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v3, v2, v5

    aput v3, v0, v11

    goto :goto_8

    :cond_12
    move v0, v6

    .line 756
    goto/16 :goto_5

    .line 792
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 793
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v3, v3, p1

    aget v2, v2, v0

    aput v2, v3, v1

    .line 794
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v2, p1

    aput v1, v2, v11

    goto/16 :goto_6

    :cond_14
    move v3, v4

    goto/16 :goto_7
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V
    .locals 3
    .parameter "cluster"
    .parameter "subscription"

    .prologue
    .line 267
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    .line 270
    return-void
.end method

.method public addSubsLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 241
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V

    .line 242
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 244
    .local v1, wifiMessenger:Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 247
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController for SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1447
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1448
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1450
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1452
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1454
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1456
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1458
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1460
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1461
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1462
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1463
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1466
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1468
    const-string v0, "  mLastSignalLevel"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1469
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1470
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p4

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v0, v0, p4

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1495
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1496
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1498
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1499
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1500
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1502
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1509
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1510
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1512
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1513
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1514
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1523
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1525
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1527
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1529
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p4

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1532
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p4

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1539
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1540
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1541
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1548
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    return-void

    .line 1442
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 867
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 870
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 871
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_2

    .line 872
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 873
    .local v1, iconMode:I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 879
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 335
    .local v13, action:Ljava/lang/String;
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received action== :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 340
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 391
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 343
    const/4 v6, 0x0

    .local v6, sub:I
    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    aget-boolean v2, v1, v6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    aget-object v3, v1, v6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    aget-boolean v4, v1, v6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    aget-object v5, v1, v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 345
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 346
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 347
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 343
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 349
    .end local v6           #sub:I
    :cond_3
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    const-string v1, "subscription"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 351
    .local v12, subscription:I
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SPN update on sub :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    const-string v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v1, v12

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    const-string v2, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 354
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    const-string v2, "showPlmn"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v1, v12

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    const-string v2, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 358
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    aget-boolean v8, v1, v12

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    aget-object v9, v1, v12

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    aget-boolean v10, v1, v12

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    aget-object v11, v1, v12

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 360
    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 361
    invoke-virtual {p0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 362
    .end local v12           #subscription:I
    :cond_4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 364
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 365
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 366
    :cond_6
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 367
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "ACTION_CONFIGURATION_CHANGED :"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 369
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v14, v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v1, v1, v14

    invoke-direct {p0, v1, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(Ljava/lang/String;I)V

    .line 371
    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 372
    invoke-virtual {p0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 369
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 375
    .end local v14           #i:I
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 377
    :cond_8
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 378
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "ACTION_AIRPLANE_MODE_CHANGED :"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 380
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v14, v1, :cond_9

    .line 381
    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimIcon(I)V

    .line 382
    invoke-direct {p0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 380
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 384
    :cond_9
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 385
    .end local v14           #i:I
    :cond_a
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 389
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V
    .locals 12
    .parameter "cluster"
    .parameter "subscription"

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 279
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v9, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aget-boolean v10, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v11, v0, p2

    move-object v0, p1

    move v8, p2

    invoke-interface/range {v0 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(Z[IIILjava/lang/String;Ljava/lang/String;IILandroid/telephony/ServiceState;ZZ)V

    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_3

    .line 292
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v0, p2

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v9, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aget-boolean v10, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v11, v0, p2

    move-object v0, p1

    move v8, p2

    invoke-interface/range {v0 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(Z[IIILjava/lang/String;Ljava/lang/String;IILandroid/telephony/ServiceState;ZZ)V

    .line 318
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 320
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster, mMSimPhoneSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v2, p2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataTypeIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimMobileActivityIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNoMSimIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 292
    :cond_2
    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    aput v3, v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    goto/16 :goto_1

    .line 306
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v9, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aget-boolean v10, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v11, v0, p2

    move-object v0, p1

    move v8, p2

    invoke-interface/range {v0 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(Z[IIILjava/lang/String;Ljava/lang/String;IILandroid/telephony/ServiceState;ZZ)V

    goto/16 :goto_2
.end method

.method protected refreshViews(I)V
    .locals 12
    .parameter

    .prologue
    const v10, 0x7f0200ff

    const/4 v9, 0x2

    const v8, 0x7f0a00b1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1102
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 1104
    const-string v1, ""

    .line 1105
    const-string v0, ""

    .line 1106
    const-string v0, ""

    .line 1108
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews subscription ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "mMSimDataConnected ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v6, v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews mMSimDataActivity ="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v6, v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_4

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v3, v0, p1

    move v0, v3

    .line 1113
    :goto_0
    if-ge v0, v9, :cond_0

    .line 1114
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v2, v2, p1

    aput v3, v2, v0

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_0
    const-string v0, ""

    .line 1117
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    move-object v0, v1

    .line 1156
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v1, :cond_a

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 1158
    const v0, 0x7f0a00b2

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1182
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    aput v2, v1, p1

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    aput v2, v1, p1

    .line 1185
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    aput-object v2, v1, p1

    move-object v1, v0

    .line 1195
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v2, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    aput v6, v2, p1

    .line 1198
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0093

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p1

    .line 1202
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/16 v6, 0x9

    if-ne v2, v6, :cond_c

    move v2, v5

    .line 1204
    :goto_4
    if-eqz v2, :cond_2

    .line 1206
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1209
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p1

    if-eqz v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1215
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0094

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p1

    .line 1217
    const v2, 0x7f020308

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    move v2, v3

    .line 1218
    :goto_5
    if-ge v2, v9, :cond_d

    .line 1219
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v6, v6, p1

    aput v3, v6, v2

    .line 1218
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1127
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_5

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1141
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_8

    .line 1142
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 1145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 1147
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 1148
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    goto/16 :goto_1

    .line 1129
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_7

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_6

    .line 1133
    :cond_6
    const-string v0, ""

    goto :goto_6

    .line 1136
    :cond_7
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1151
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aput v3, v0, p1

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aput v3, v0, p1

    move-object v0, v1

    goto/16 :goto_1

    .line 1161
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 1177
    :pswitch_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_2

    .line 1168
    :pswitch_1
    const v1, 0x7f020324

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_2

    .line 1171
    :pswitch_2
    const v1, 0x7f020326

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_2

    .line 1174
    :pswitch_3
    const v1, 0x7f020325

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_2

    .line 1187
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_b

    .line 1188
    const-string v1, ""

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_3

    .line 1190
    :cond_b
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_3

    :cond_c
    move v2, v3

    .line 1202
    goto/16 :goto_4

    .line 1221
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v3, v6, p1

    aput v3, v2, p1

    .line 1223
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aput v3, v2, p1

    .line 1226
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_f

    .line 1228
    const-string v2, ""

    .line 1242
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v3, v2, p1

    .line 1243
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aput v3, v2, p1

    .line 1245
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v4, v4, p1

    aput v4, v2, p1

    move-object v2, v1

    move-object v1, v0

    .line 1260
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_e

    .line 1261
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews: Data not connected!! Set no data type icon / Roaming for subscription: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v10, v0, p1

    .line 1274
    :cond_e
    :goto_9
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews connected={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_15

    const-string v0, " wifi"

    :goto_a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_16

    const-string v0, " data"

    :goto_b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " } level="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_17

    const-string v0, "??"

    :goto_c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimcombinedSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimcombinedActivityIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mAirplaneMode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataActivity="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v6, v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimPhoneSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v6, v6, p1

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v6, v6, p1

    aget v6, v6, v3

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataDirectionIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataTypeIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mNoMSimIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimMobileActivityIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mWifiIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mBluetoothTetherIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1307
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_d

    .line 1230
    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_10

    .line 1232
    const-string v0, ""

    .line 1238
    :goto_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    aput-object v4, v2, p1

    .line 1240
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v4, v4, p1

    aput v4, v2, p1

    goto/16 :goto_7

    .line 1234
    :cond_10
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1236
    goto :goto_e

    .line 1247
    :cond_11
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v6, v6, p1

    if-nez v6, :cond_2d

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v6, :cond_2d

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v6, :cond_2d

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v6, :cond_2d

    if-nez v2, :cond_2d

    .line 1251
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1254
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v1, v1, p1

    :goto_f
    aput v1, v4, p1

    .line 1256
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v1, v1, p1

    :goto_10
    aput-object v1, v4, p1

    move-object v1, v0

    goto/16 :goto_8

    .line 1254
    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_f

    .line 1256
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_10

    .line 1269
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v10, v0, p1

    goto/16 :goto_9

    .line 1274
    :cond_15
    const-string v0, ""

    goto/16 :goto_a

    :cond_16
    const-string v0, ""

    goto/16 :goto_b

    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1310
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v4, v4, p1

    aget v4, v4, v3

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v4, v4, p1

    aget v4, v4, v5

    if-ne v0, v4, :cond_19

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v4, :cond_19

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v4, p1

    if-ne v0, v4, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v4, v4, p1

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastcombinedActivityIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v4, v4, p1

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsLastRoaming:[Z

    aget-boolean v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aget-boolean v4, v4, p1

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataConnected:[Z

    aget-boolean v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v4, v4, p1

    if-eq v0, v4, :cond_1a

    .line 1326
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;

    .line 1327
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    goto :goto_11

    .line 1331
    :cond_1a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v4, :cond_1b

    .line 1332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 1335
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsLastRoaming:[Z

    aget-boolean v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aget-boolean v4, v4, p1

    if-eq v0, v4, :cond_1c

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsLastRoaming:[Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mIsRoaming:[Z

    aget-boolean v4, v4, p1

    aput-boolean v4, v0, p1

    .line 1338
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataConnected:[Z

    aget-boolean v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v4, v4, p1

    if-eq v0, v4, :cond_1d

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataConnected:[Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v4, v4, p1

    aput-boolean v4, v0, p1

    .line 1341
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    if-eq v0, v4, :cond_1e

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastServiceState:[Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    aput-object v4, v0, p1

    .line 1345
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v4, v4, p1

    aget v4, v4, v3

    if-ne v0, v4, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v4, v4, p1

    aget v4, v4, v5

    if-eq v0, v4, :cond_20

    .line 1349
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v4, v4, p1

    aget v4, v4, v3

    aput v4, v0, v3

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[[I

    aget-object v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[[I

    aget-object v4, v4, p1

    aget v4, v4, v5

    aput v4, v0, v5

    .line 1356
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v4, v4, p1

    if-eq v0, v4, :cond_21

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v4, v4, p1

    aput v4, v0, p1

    .line 1360
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v4, v4, p1

    if-eq v0, v4, :cond_22

    .line 1361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v4, v4, p1

    aput v4, v0, p1

    .line 1365
    :cond_22
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v0, v4, :cond_23

    .line 1366
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 1370
    :cond_23
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-eq v0, v4, :cond_24

    .line 1371
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 1374
    :cond_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v4, v4, p1

    if-eq v0, v4, :cond_25

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v4, v4, p1

    aput v4, v0, p1

    .line 1379
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastcombinedActivityIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v4, v4, p1

    if-eq v0, v4, :cond_26

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastcombinedActivityIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v4, v4, p1

    aput v4, v0, p1

    .line 1385
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v4, p1

    if-eq v0, v4, :cond_27

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v4, p1

    aput v4, v0, p1

    .line 1390
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1391
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    .line 1393
    :goto_12
    if-ge v4, v6, :cond_28

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1395
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_12

    .line 1400
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1401
    :goto_13
    if-ge v2, v4, :cond_2a

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1403
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1405
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    :goto_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 1407
    :cond_29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    .line 1415
    :cond_2a
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 1416
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 1417
    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2b

    .line 1418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->setCarrierTextDouble()V

    .line 1438
    :goto_15
    return-void

    .line 1420
    :cond_2b
    if-eqz v1, :cond_2c

    .line 1421
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->setCarrierTextSingle(I)V

    goto :goto_15

    .line 1423
    :cond_2c
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->setCarrierTextSingle(I)V

    goto :goto_15

    :cond_2d
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_8

    .line 1166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 252
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 253
    .local v1, numPhones:I
    const-string v2, "phone_msim"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/MSimTelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    .line 254
    new-array v2, v1, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1058
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConnectivity: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1063
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1066
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 1067
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    .line 1068
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 1069
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1075
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1078
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: networkInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: connectionStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/16 v4, 0x32

    if-le v0, v4, :cond_2

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    .line 1083
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 1084
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 1090
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 1091
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1092
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V

    .line 1093
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 1094
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v0, v2

    .line 1066
    goto :goto_0

    .line 1071
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1082
    goto :goto_2

    .line 1086
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto :goto_3

    .line 1096
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 1097
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 973
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":updateNetworkName spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, p5}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 984
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":mccmnc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string v3, "51009"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "51028"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 987
    :cond_0
    const-string v0, "Smartfren"

    .line 988
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    move v2, v1

    .line 992
    :goto_0
    if-nez v3, :cond_6

    .line 993
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 995
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":spn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v2, "smart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "smartfren"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mobile-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 998
    :cond_1
    const-string v0, "Smartfren"

    .line 1000
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1008
    :goto_1
    if-eqz v0, :cond_5

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p5

    .line 1016
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p5

    invoke-direct {p0, v0, p5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(Ljava/lang/String;I)V

    .line 1019
    :cond_3
    return-void

    .line 1002
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1004
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1005
    goto :goto_1

    .line 1011
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p5

    .line 1013
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMSimNetworkName==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v3, v0

    move v2, v0

    move-object v0, p2

    goto/16 :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 604
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, stateExtra:Ljava/lang/String;
    const-string v4, "subscription"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 607
    .local v3, sub:I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 632
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, v3

    if-eq v1, v4, :cond_0

    .line 633
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v4, v3

    .line 634
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 635
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateIconSet(I)V

    .line 638
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimIcon(I)V

    .line 639
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 640
    return-void

    .line 611
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "IMSI"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 614
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 616
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 617
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, lockedReason:Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 620
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 622
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 623
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 626
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 629
    .end local v0           #lockedReason:Ljava/lang/String;
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method
