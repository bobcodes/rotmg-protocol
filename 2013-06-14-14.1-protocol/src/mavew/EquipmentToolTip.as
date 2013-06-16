package mavew
{
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import com.company.assembleegameclient.objects.Player;
   import __AS3__.vec.Vector;
   import jediwip.Vofezuzy;
   import flash.filters.DropShadowFilter;
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import jediwip.Kybidu;
   import pilage.Warel;
   import aaa.StatData;
   import hivaw.Woserev;
   import jediwip.Tunyhazo;
   import com.company.util.Coluf;
   import aaa.RotmgParameters.RotmgParameters;


   public class EquipmentToolTip extends Qyryl
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function EquipmentToolTip(param1:int, param2:Player, param3:int, param4:String) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         this.nykibeva=new Vector.<Effect>();
         this.objectType=param1;
         this.player=param2;
         this.linepu=param3;
         this.voqor=param4;
         this.fav=param2?param2.fav():false;
         this.wuq=param2?ObjectLibrary.racig(param1,param2):false;
         var _loc5_:int = param2?ObjectLibrary.tuni(param1,param2):-1;
         var _loc6_:uint = (this.wuq)||this.player==null?3552822:6036765;
         var _loc7_:uint = (this.wuq)||param2==null?10197915:10965039;
         super(_loc6_,1,_loc7_,1,true);
         this.gilij=new Dojykyli();
         this.kubiw=ObjectLibrary.ziq[param1];
         this.ququdano=!(_loc5_==-1);
         this.rydemujis=new Vector.<Effect>();
         this.husiqil=int(this.kubiw.SlotType);
         if(this.player==null)
         {
            this.curItemXML=this.kubiw;
         }
         else
         {
            if(this.ququdano)
            {
               if(this.player.zosig[_loc5_]!=-1)
               {
                  this.curItemXML=ObjectLibrary.ziq[this.player.zosig[_loc5_]];
               }
            }
         }
         this.vafype();
         this.nopuz();
         this.beq();
         this.buly();
         this.zififun();
         this.giwuji();
         this.muco();
         this.ralypim();
         this.husobi();
         this.rypa();
         this.pepohejo();
         this.qeve();
         this.raru();
         this.bytyboj();
         this.vemijis();
         this.naciry();
         this.zefykym();
         this.bylov();
         return;
      }

      private static const menuniwo:int = 230;

      private var icon:Bitmap;

      private var vef:Guzowoja;

      private var nibidaj:Guzowoja;

      private var pudidibas:Guzowoja;

      private var line1:Gymajyzu;

      private var myleginu:Guzowoja;

      private var line2:Gymajyzu;

      private var qyleramo:Guzowoja;

      private var player:Player;

      private var ququdano:Boolean = false;

      private var objectType:int;

      private var curItemXML:XML = null;

      private var kubiw:XML = null;

      private var gilij:Dojykyli;

      private var genudonif:Vector.<Restriction>;

      private var rydemujis:Vector.<Effect>;

      private var nykibeva:Vector.<Effect>;

      private var husiqil:int;

      private var linepu:int;

      private var geredeni:uint;

      private var voqor:String;

      private var fav:Boolean;

      private var wuq:Boolean;

      private var rat:Wyceja;

      private var temo:Guzowoja;

      private function bylov() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(this.kubiw.hasOwnProperty("feedPower"))
         {
            _loc1_=(this.wuq)||this.player==null?16777215:16549442;
            this.temo=new Guzowoja().setSize(12).setColor(_loc1_).setBold(true).setTextWidth(menuniwo-this.icon.width-4-30).setWordWrap(true);
            this.temo.setStringBuilder(new Vofezuzy().setString("Feed Power: "+this.kubiw.feedPower));
            this.temo.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            ryfoc.push(this.temo.textChanged);
            addChild(this.temo);
         }
         return;
      }

      private function giwuji() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:XMLList = null;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:AppendingLineBuilder = null;
         if(this.kubiw.hasOwnProperty("ExtraTooltipData"))
         {
            _loc1_=this.kubiw.ExtraTooltipData.EffectInfo;
            for each (_loc2_ in _loc1_)
            {
               _loc3_=_loc2_.attribute("name");
               _loc4_=_loc2_.attribute("description");
               _loc5_=(_loc3_)&&(_loc4_)?": ":"\n";
               _loc6_=new AppendingLineBuilder();
               if(_loc3_)
               {
                  _loc6_.pushParams(_loc3_);
               }
               if(_loc4_)
               {
                  _loc6_.pushParams(_loc4_,{},Taz.humuhujig(16777103),Taz.vepiq());
               }
               _loc6_.setDelimiter(_loc5_);
               this.nykibeva.push(new Effect(Vibemod.benuwi,{data:_loc6_}));
            }
         }
         return;
      }

      private function guj() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.ququdano)&&this.curItemXML==null;
      }

      private function vafype() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:XML = ObjectLibrary.ziq[this.objectType];
         var _loc2_:* = 5;
         if(_loc1_.hasOwnProperty("ScaleValue"))
         {
            _loc2_=_loc1_.ScaleValue;
         }
         var _loc3_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.objectType,60,true,true,_loc2_);
         _loc3_=BitmapUtil.kodopomid(_loc3_,4,4,_loc3_.width-8,_loc3_.height-8);
         this.icon=new Bitmap(_loc3_);
         addChild(this.icon);
         return;
      }

      private function beq() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = this.bol()==false;
         var _loc2_:* = this.kubiw.hasOwnProperty("Consumable")==false;
         var _loc3_:* = this.kubiw.hasOwnProperty("Treasure")==false;
         var _loc4_:Boolean = this.kubiw.hasOwnProperty("Tier");
         if((_loc1_)&&(_loc2_)&&(_loc3_))
         {
            this.nibidaj=new Guzowoja().setSize(16).setColor(16777215).setTextWidth(30).setBold(true);
            if(_loc4_)
            {
               this.nibidaj.setStringBuilder(new Kybidu().setParams(Vibemod.secabyti,{tier:this.kubiw.Tier}));
            }
            else
            {
               this.nibidaj.setColor(9055202);
               this.nibidaj.setStringBuilder(new Kybidu().setParams(Vibemod.qetewev));
            }
            addChild(this.nibidaj);
         }
         return;
      }

      private function bol() : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var activateTags:XMLList = null;
         activateTags=this.kubiw.Activate.(text()=="PermaPet");
         return activateTags.length()>=1;
      }

      private function nopuz() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = (this.wuq)||this.player==null?16777215:16549442;
         this.vef=new Guzowoja().setSize(16).setColor(_loc1_).setBold(true).setTextWidth(menuniwo-this.icon.width-4-30).setWordWrap(true);
         this.vef.setStringBuilder(new Kybidu().setParams(ObjectLibrary.kipanudad[this.objectType]));
         this.vef.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         ryfoc.push(this.vef.textChanged);
         addChild(this.vef);
         return;
      }

      private function futyly() : String {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc1_:XMLList = null;
         var _loc2_:Vector.<Effect> = null;
         var _loc3_:XML = null;
         if(this.kubiw.hasOwnProperty("ExtraTooltipData"))
         {
            _loc1_=this.kubiw.ExtraTooltipData.EffectInfo;
            _loc2_=new Vector.<Effect>();
            for each (_loc3_ in _loc1_)
            {
               _loc2_.push(new Effect(_loc3_.attribute("name"),_loc3_.attribute("description")));
            }
         }
         return "";
      }

      private function bytyboj() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:AppendingLineBuilder = null;
         if(!(this.rydemujis.length==0)||!(this.rat.begiqo==null)||(this.kubiw.hasOwnProperty("ExtraTooltipData")))
         {
            this.line1=new Gymajyzu(menuniwo-12,0);
            this.myleginu=new Guzowoja().setSize(14).setColor(11776947).setTextWidth(menuniwo).setWordWrap(true).setHTML(true);
            _loc1_=this.piqalu();
            this.myleginu.setStringBuilder(_loc1_);
            this.myleginu.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            if(_loc1_.sodi())
            {
               addChild(this.line1);
               addChild(this.myleginu);
            }
         }
         return;
      }

      private function piqalu() : AppendingLineBuilder {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         this.bivug(this.nykibeva,_loc1_);
         if(this.rat.begiqo.sodi())
         {
            _loc1_.pushParams(Vibemod.benuwi,{data:this.rat.begiqo});
         }
         this.bivug(this.rydemujis,_loc1_);
         return _loc1_;
      }

      private function bivug(param1:Vector.<Effect>, param2:AppendingLineBuilder) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:Effect = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         for each (_loc3_ in param1)
         {
            _loc4_="";
            _loc5_="";
            if(_loc3_.color_)
            {
               _loc4_="<font color=\"#"+_loc3_.color_.toString(16)+"\">";
               _loc5_="</font>";
            }
            param2.pushParams(_loc3_.name_,_loc3_.getValueReplacementsWithColor(),_loc4_,_loc5_);
         }
         return;
      }

      private function muco() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.kubiw.hasOwnProperty("NumProjectiles"))&&!(this.rat.lor.hasOwnProperty(this.kubiw.NumProjectiles.toXMLString())==true))
         {
            this.rydemujis.push(new Effect(Vibemod.domow,{numShots:this.kubiw.NumProjectiles}));
         }
         return;
      }

      private function raru() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         if(this.kubiw.hasOwnProperty("FameBonus"))
         {
            _loc1_=int(this.kubiw.FameBonus);
            _loc2_=this.wuq?Taz.nulotuf:Taz.tejy;
            if(!(this.curItemXML==null)&&(this.curItemXML.hasOwnProperty("FameBonus")))
            {
               _loc3_=int(this.curItemXML.FameBonus.text());
               _loc2_=Taz.musybiboj(_loc1_-_loc3_);
            }
            this.rydemujis.push(new Effect(Vibemod.sub,{percent:this.kubiw.FameBonus+"%"}).setReplacementsColor(_loc2_));
         }
         return;
      }

      private function qeve() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kubiw.hasOwnProperty("MpEndCost"))
         {
            if(!this.rat.lor[this.kubiw.MpEndCost[0].toXMLString()])
            {
               this.rydemujis.push(new Effect(Vibemod.tal,{cost:this.kubiw.MpEndCost}));
            }
         }
         else
         {
            if((this.kubiw.hasOwnProperty("MpCost"))&&!this.rat.lor[this.kubiw.MpCost[0].toXMLString()])
            {
               if(!this.rat.lor[this.kubiw.MpCost[0].toXMLString()])
               {
                  this.rydemujis.push(new Effect(Vibemod.tal,{cost:this.kubiw.MpCost}));
               }
            }
         }
         return;
      }

      private function pepohejo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.kubiw.hasOwnProperty("Doses"))
         {
            this.rydemujis.push(new Effect(Vibemod.dopes,{dose:this.kubiw.Doses}));
         }
         return;
      }

      private function ralypim() : void {
         var [OFS2]_loc8_:* = [/OFS]true;
         var [OFS4]_loc9_:* = [/OFS]false;
         var [OFS11]_loc1_:XML = [/OFS][OFS8]null[/OFS];
         var [OFS14]_loc2_:* = [/OFS][OFS12]0[/OFS];
         var [OFS17]_loc3_:* = [/OFS][OFS15]0[/OFS];
         var [OFS19]_loc4_:* = [/OFS][OFS18]NaN[/OFS];
         var [OFS24]_loc5_:XML = [/OFS][OFS21]null[/OFS];
         if((this.[OFS27]kubiw[/OFS].[OFS33]hasOwnProperty[/OFS][OFS33]([/OFS][OFS30]"Projectile"[/OFS][OFS33])[/OFS])&&[OFS66]![/OFS]this.[OFS45]rat[/OFS].[OFS48]lor[/OFS].[OFS62]hasOwnProperty[/OFS][OFS62]([/OFS]this.[OFS52]kubiw[/OFS].[OFS55]Projectile[/OFS].[OFS58]toXMLString[/OFS][OFS58]([/OFS][OFS58])[/OFS][OFS62])[/OFS])
         {
            [OFS85]_loc1_=[/OFS][OFS80]XML[/OFS][OFS80]([/OFS]this.[OFS74]kubiw[/OFS].[OFS77]Projectile[/OFS][OFS80])[/OFS];
            [OFS97]_loc2_=[/OFS][OFS93]int[/OFS][OFS93]([/OFS][OFS88]_loc1_[/OFS].[OFS89]MinDamage[/OFS][OFS93])[/OFS];
            [OFS109]_loc3_=[/OFS][OFS105]int[/OFS][OFS105]([/OFS][OFS100]_loc1_[/OFS].[OFS101]MaxDamage[/OFS][OFS105])[/OFS];
            this.[OFS111]rydemujis[/OFS].[OFS156]push[/OFS][OFS156]([/OFS][OFS152]new [/OFS][OFS152]Effect[/OFS][OFS152]([/OFS][OFS117]Vibemod[/OFS].[OFS119]DAMAGE[/OFS],[OFS150]{[/OFS]damage:([OFS125]_loc2_[/OFS][OFS127]==[/OFS][OFS126]_loc3_[/OFS]?[OFS132]_loc2_[/OFS]:[OFS138]_loc2_[/OFS][OFS142]+[/OFS][OFS139]" - "[/OFS][OFS144]+[/OFS][OFS143]_loc3_[/OFS]).[OFS146]toString[/OFS][OFS146]([/OFS][OFS146])[/OFS][OFS150]}[/OFS][OFS152])[/OFS][OFS156])[/OFS];
            [OFS185]_loc4_=[/OFS][OFS166]Number[/OFS][OFS166]([/OFS][OFS161]_loc1_[/OFS].[OFS162]Speed[/OFS][OFS166])[/OFS][OFS179]*[/OFS][OFS176]Number[/OFS][OFS176]([/OFS][OFS171]_loc1_[/OFS].[OFS172]LifetimeMS[/OFS][OFS176])[/OFS][OFS183]/[/OFS][OFS180]10000[/OFS];
            this.[OFS188]rydemujis[/OFS].[OFS217]push[/OFS][OFS217]([/OFS][OFS213]new [/OFS][OFS213]Effect[/OFS][OFS213]([/OFS][OFS194]Vibemod[/OFS].[OFS196]jetywatob[/OFS],[OFS211]{[/OFS]range:[OFS202]Taz[/OFS].[OFS207]fijov[/OFS][OFS207]([/OFS][OFS205]_loc4_[/OFS][OFS207])[/OFS][OFS211]}[/OFS][OFS213])[/OFS][OFS217])[/OFS];
            if(this.[OFS221]kubiw[/OFS].[OFS224]Projectile[/OFS].[OFS230]hasOwnProperty[/OFS][OFS230]([/OFS][OFS227]"MultiHit"[/OFS][OFS230])[/OFS])
            {
               this.[OFS239]rydemujis[/OFS].[OFS265]push[/OFS][OFS265]([/OFS][OFS252]new [/OFS][OFS252]Effect[/OFS][OFS252]([/OFS][OFS245]Vibemod[/OFS].[OFS247]dadoku[/OFS],[OFS250]{[/OFS][OFS250]}[/OFS][OFS252])[/OFS].[OFS262]setColor[/OFS][OFS262]([/OFS][OFS256]Taz[/OFS].[OFS259]tejy[/OFS][OFS262])[/OFS][OFS265])[/OFS];
            }
            if(this.[OFS269]kubiw[/OFS].[OFS272]Projectile[/OFS].[OFS278]hasOwnProperty[/OFS][OFS278]([/OFS][OFS275]"PassesCover"[/OFS][OFS278])[/OFS])
            {
               this.[OFS287]rydemujis[/OFS].[OFS313]push[/OFS][OFS313]([/OFS][OFS300]new [/OFS][OFS300]Effect[/OFS][OFS300]([/OFS][OFS293]Vibemod[/OFS].[OFS295]bapazin[/OFS],[OFS298]{[/OFS][OFS298]}[/OFS][OFS300])[/OFS].[OFS310]setColor[/OFS][OFS310]([/OFS][OFS304]Taz[/OFS].[OFS307]tejy[/OFS][OFS310])[/OFS][OFS313])[/OFS];
            }
            for each (_loc5_ in [OFS320]_loc1_[/OFS].[OFS321]ConditionEffect[/OFS])
            {
               if(this.[OFS342]rat[/OFS].[OFS345]lor[/OFS][[OFS348]_loc5_[/OFS].[OFS350]toXMLString[/OFS][OFS350]([/OFS][OFS350])[/OFS]][OFS358]!=[/OFS][OFS357]null[/OFS])
               {
               }
               else
               {
                  this.[OFS367]rydemujis[/OFS].[OFS389]push[/OFS][OFS389]([/OFS][OFS385]new [/OFS][OFS385]Effect[/OFS][OFS385]([/OFS][OFS373]Vibemod[/OFS].[OFS375]cywop[/OFS],[OFS383]{[/OFS]effect:[OFS381]""[/OFS][OFS383]}[/OFS][OFS385])[/OFS][OFS389])[/OFS];
                  this.[OFS393]rydemujis[/OFS].[OFS448]push[/OFS][OFS448]([/OFS][OFS435]new [/OFS][OFS435]Effect[/OFS][OFS435]([/OFS][OFS399]Vibemod[/OFS].[OFS401]dykejorug[/OFS],
                     [OFS433]{[/OFS]
                     effect:this.[OFS408]kubiw[/OFS].[OFS411]Projectile[/OFS].[OFS414]ConditionEffect[/OFS],
                     duration:this.[OFS421]kubiw[/OFS].[OFS424]Projectile[/OFS].[OFS427]ConditionEffect[/OFS].[OFS430]@duration[/OFS]
                     [OFS433]}[/OFS]
                  [OFS435])[/OFS].[OFS445]setColor[/OFS][OFS445]([/OFS][OFS439]Taz[/OFS].[OFS442]tejy[/OFS][OFS445])[/OFS][OFS448])[/OFS];
               }
            }
         }
         [OFS462]return[/OFS];
      }

      private function husobi() : void {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         var _loc10_:AppendingLineBuilder = null;
         for each (_loc1_ in this.kubiw.Activate)
         {
            _loc5_=this.rat.lor[_loc1_.toXMLString()];
            if(this.rat.lor[_loc1_.toXMLString()]==true)
            {
            }
            else
            {
               _loc6_=_loc1_.toString();
               switch(_loc6_)
               {
                  case Warel.cud:
                     this.rydemujis.push(new Effect(Vibemod.zekora,{effect:new AppendingLineBuilder().pushParams(Vibemod.dotyw,{range:_loc1_.@range},Taz.humuhujig(Taz.tejy),Taz.vepiq())}));
                     this.rydemujis.push(new Effect(Vibemod.dykejorug,
                        {
                           effect:_loc1_.@effect,
                           duration:_loc1_.@duration
                        }
                     ).setColor(Taz.tejy));
                     break;
                  case Warel.molafub:
                     this.rydemujis.push(new Effect(Vibemod.nenigiw,{effect:""}));
                     this.rydemujis.push(new Effect(Vibemod.dykejorug,
                        {
                           effect:_loc1_.@effect,
                           duration:_loc1_.@duration
                        }
                     ));
                     break;
                  case Warel.rodunykid:
                     this.rydemujis.push(new Effect(Vibemod.vobovop,
                        {
                           statAmount:"+"+_loc1_.@amount+" ",
                           statName:new Kybidu().setParams(Vibemod.nysirahec)
                        }
                     ));
                     break;
                  case Warel.lira:
                     this.rydemujis.push(new Effect(Vibemod.hehy,{effect:new AppendingLineBuilder().pushParams(Vibemod.ryjyfony,
                        {
                           amount:_loc1_.@amount,
                           range:_loc1_.@range
                        }
                     ,Taz.humuhujig(Taz.tejy),Taz.vepiq())}));
                     break;
                  case Warel.qici:
                     this.rydemujis.push(new Effect(Vibemod.vobovop,
                        {
                           statAmount:"+"+_loc1_.@amount+" ",
                           statName:new Kybidu().setParams(Vibemod.reqodafes)
                        }
                     ));
                     break;
                  case Warel.fumag:
                     this.rydemujis.push(new Effect(Vibemod.regubom,_loc1_.@amount+" MP at "+_loc1_.@range+" sqrs"));
                     break;
                  case Warel.TELEPORT:
                     this.rydemujis.push(new Effect(Vibemod.benuwi,{data:new Kybidu().setParams(Vibemod.kevoraf)}));
                     break;
                  case Warel.govuce:
                     this.rydemujis.push(new Effect(Vibemod.jijutus,{effect:new AppendingLineBuilder().pushParams(Vibemod.ryjyfony,
                        {
                           amount:_loc1_.@totalDamage,
                           range:_loc1_.@radius
                        }
                     ,Taz.humuhujig(Taz.tejy),Taz.vepiq())}));
                     break;
                  case Warel.mopotewun:
                     _loc7_=_loc1_.hasOwnProperty("@condEffect")?_loc1_.@condEffect:new Kybidu().setParams(Vibemod.sopyz);
                     _loc8_=_loc1_.hasOwnProperty("@condDuration")?_loc1_.@condDuration:"5";
                     this.rydemujis.push(new Effect(Vibemod.mopotewun,{data:new AppendingLineBuilder().pushParams(Vibemod.ryjyfony,
                        {
                           amount:_loc1_.@totalDamage,
                           range:_loc1_.@radius
                        }
                     ,Taz.humuhujig(Taz.tejy),Taz.vepiq()).pushParams(Vibemod.dykejorug,
                        {
                           effect:_loc7_,
                           duration:_loc8_
                        }
                     ,Taz.humuhujig(Taz.tejy),Taz.vepiq())}));
                     break;
                  case Warel.paActionMapperAbstractir:
                     this.rydemujis.push(new Effect(Vibemod.joneqoq,{stasis:new AppendingLineBuilder().pushParams(Vibemod.mewafaw,{duration:_loc1_.@duration},Taz.humuhujig(Taz.tejy),Taz.vepiq())}));
                     break;
                  case Warel.sasime:
                     this.rydemujis.push(new Effect(Vibemod.sasime,{data:new AppendingLineBuilder().pushParams(Vibemod.mewafaw,{duration:_loc1_.@duration},Taz.humuhujig(Taz.tejy),Taz.vepiq())}));
                     break;
                  case Warel.dikubi:
                     this.rydemujis.push(new Effect(Vibemod.dikubi,{data:new AppendingLineBuilder().pushParams(Vibemod.woqutyva,
                        {
                           damage:_loc1_.@totalDamage,
                           targets:_loc1_.@maxTargets
                        }
                     ,Taz.humuhujig(Taz.tejy),Taz.vepiq())}));
                     break;
                  case Warel.lyjorere:
                     this.rydemujis.push(new Effect(Vibemod.lyjorere,{data:""}));
                     this.rydemujis.push(new Effect(Vibemod.monodaso,
                        {
                           damage:_loc1_.@totalDamage,
                           duration:_loc1_.@duration,
                           radius:_loc1_.@radius
                        }
                     ).setColor(Taz.tejy));
                     break;
                  case Warel.vow:
                     this.rydemujis.push(new Effect(Vibemod.kukamij,{}).setColor(Taz.tejy));
                     break;
                  case Warel.mocezuza:
                     this.rydemujis.push(new Effect(Vibemod.kukamij,{}).setColor(Taz.tejy));
                     break;
                  case Warel.vobovop:
                     _loc3_=int(_loc1_.@stat);
                     _loc4_=int(_loc1_.@amount);
                     _loc9_={};
                     if(!(_loc3_==StatData.tiboActionMapperAbstracter)&&!(_loc3_==StatData.nabavaf))
                     {
                        _loc2_=Vibemod.masut;
                        _loc9_["statName"]=new Kybidu().setParams(StatData.lycaz(_loc3_));
                        this.rydemujis.push(new Effect(_loc2_,_loc9_).setColor(16777103));
                        break;
                     }
                     _loc2_=Vibemod.benuwi;
                     _loc10_=new AppendingLineBuilder().setDelimiter(" ");
                     _loc10_.pushParams(Vibemod.benuwi,{data:new Vofezuzy("+"+_loc4_)});
                     _loc10_.pushParams(StatData.lycaz(_loc3_));
                     _loc9_["data"]=_loc10_;
                     this.rydemujis.push(new Effect(_loc2_,_loc9_));
                     break;
               }
            }
         }
         return;
      }

      private function rypa() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:XML = null;
         var _loc2_:* = true;
         for each (_loc1_ in this.kubiw.ActivateOnEquip)
         {
            this.rydemujis.push(new Effect(Vibemod.hyreh,""));
            _loc2_=false;
            if(_loc1_.toString()=="IncrementStat")
            {
               this.rydemujis.push(new Effect(Vibemod.vobovop,this.miluma(_loc1_)).setReplacementsColor(this.noqerevi(_loc1_)));
            }
         }
         return;
      }

      private function miluma(param1:XML) : Object {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = int(param1.@stat);
         var _loc3_:int = int(param1.@amount);
         var _loc4_:String = _loc3_>-1?"+":"";
         return 
            {
               statAmount:_loc4_+String(_loc3_)+" ",
               statName:new Kybidu().setParams(StatData.lycaz(_loc2_))
            }
         ;
      }

      private function noqerevi(param1:XML) : uint {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var match:XML = null;
         var otherAmount:int = 0;
         var activateXML:XML = param1;
         var stat:int = int(activateXML.@stat);
         var amount:int = int(activateXML.@amount);
         var textColor:uint = this.wuq?Taz.nulotuf:Taz.tejy;
         var otherMatches:XMLList = null;
         if(this.curItemXML!=null)
         {
            otherMatches=this.curItemXML.ActivateOnEquip.(@stat==stat);
         }
         if(!(otherMatches==null)&&otherMatches.length()==1)
         {
            match=XML(otherMatches[0]);
            otherAmount=int(match.@amount);
            textColor=Taz.musybiboj(amount-otherAmount);
         }
         if(amount<0)
         {
            textColor=16711680;
         }
         return textColor;
      }

      private function guzap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kubiw.hasOwnProperty("Treasure")==false)
         {
            this.genudonif.push(new Restriction(Vibemod.difozedeq,11776947,false));
            if((this.fav)||this.voqor==Woserev.CURRENT_PLAYER)
            {
               this.genudonif.push(new Restriction(Vibemod.defoban,11776947,false));
            }
            else
            {
               this.genudonif.push(new Restriction(Vibemod.gukypeba,11776947,false));
            }
         }
         return;
      }

      private function qaqyf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.genudonif.push(new Restriction(Vibemod.vyb,16777215,false));
         return;
      }

      private function nonariv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.genudonif.push(new Restriction(Vibemod.mun,11776947,false));
         if((this.fav)||this.voqor==Woserev.CURRENT_PLAYER)
         {
            this.genudonif.push(new Restriction(Vibemod.riselapoz,16777215,false));
         }
         else
         {
            this.genudonif.push(new Restriction(Vibemod.vatutydyh,16777215,false));
         }
         return;
      }

      private function facocazyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.genudonif.push(new Restriction(Vibemod.siryvytu,11776947,false));
         this.genudonif.push(new Restriction(Vibemod.riselapoz,16777215,false));
         return;
      }

      private function naciry() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:XML = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         this.genudonif=new Vector.<Restriction>();
         if((this.kubiw.hasOwnProperty("VaultItem"))&&(!(this.linepu==-1))&&!(this.linepu==ObjectLibrary.nezuwy["Vault Chest"]))
         {
            this.genudonif.push(new Restriction(Vibemod.bynidigyd,16549442,true));
         }
         if(this.kubiw.hasOwnProperty("Soulbound"))
         {
            this.genudonif.push(new Restriction(Vibemod.zeturuq,11776947,false));
         }
         if(this.wuq)
         {
            if(this.kubiw.hasOwnProperty("Usable"))
            {
               this.qaqyf();
               this.guzap();
            }
            else
            {
               if(this.kubiw.hasOwnProperty("Consumable"))
               {
                  this.nonariv();
               }
               else
               {
                  if(this.kubiw.hasOwnProperty("InvUse"))
                  {
                     this.facocazyn();
                  }
                  else
                  {
                     this.guzap();
                  }
               }
            }
         }
         else
         {
            if(this.player!=null)
            {
               this.genudonif.push(new Restriction(Vibemod.qasusu,16549442,true));
            }
         }
         var _loc1_:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
         if(_loc1_!=null)
         {
            this.genudonif.push(new Restriction(Vibemod.jomokik,11776947,false));
         }
         for each (_loc2_ in this.kubiw.EquipRequirement)
         {
            _loc3_=ObjectLibrary.buzogiqyj(_loc2_,this.player);
            if(_loc2_.toString()=="Stat")
            {
               _loc4_=int(_loc2_.@stat);
               _loc5_=int(_loc2_.@value);
               this.genudonif.push(new Restriction("Requires "+StatData.lycaz(_loc4_)+" of "+_loc5_,_loc3_?11776947:16549442,_loc3_?false:true));
            }
         }
         return;
      }

      private function vemijis() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.line2=new Gymajyzu(menuniwo-12,0);
         addChild(this.line2);
         return;
      }

      private function zefykym() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.genudonif.length!=0)
         {
            this.qyleramo=new Guzowoja().setSize(14).setColor(11776947).setTextWidth(menuniwo-4).setIndent(-10).setLeftMargin(10).setWordWrap(true).setHTML(true);
            this.qyleramo.setStringBuilder(this.hyqojyz());
            this.qyleramo.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            ryfoc.push(this.qyleramo.textChanged);
            addChild(this.qyleramo);
         }
         return;
      }

      private function hyqojyz() : Tunyhazo {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:Restriction = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         for each (_loc2_ in this.genudonif)
         {
            _loc3_=_loc2_.bold_?"<b>":"";
            _loc3_=_loc3_.concat("<font color=\"#"+_loc2_.color_.toString(16)+"\">");
            _loc4_="</font>";
            _loc4_=_loc4_.concat(_loc2_.bold_?"</b>":"");
            _loc5_=this.player?ObjectLibrary.kipanudad[this.player.objectType_]:"";
            _loc1_.pushParams(_loc2_.text_,
               {
                  unUsableClass:_loc5_,
                  usableClasses:this.qucyvari(),
                  keyCode:Coluf.faj[RotmgParameters.data_.useSpecial]
               }
            ,_loc3_,_loc4_);
         }
         return _loc1_;
      }

      private function qucyvari() : Tunyhazo {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         var _loc1_:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
         var _loc2_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc2_.setDelimiter(", ");
         for each (_loc3_ in _loc1_)
         {
            _loc2_.pushParams(_loc3_);
         }
         return _loc2_;
      }

      private function buly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pudidibas=new Guzowoja().setSize(14).setColor(11776947).setTextWidth(menuniwo).setWordWrap(true);
         this.pudidibas.setStringBuilder(new Kybidu().setParams(String(this.kubiw.Description)));
         this.pudidibas.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         ryfoc.push(this.pudidibas.textChanged);
         addChild(this.pudidibas);
         return;
      }

      override protected function alignUI() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vef.x=this.icon.width+4;
         this.vef.y=this.icon.height/2-this.vef.height/2;
         if(this.nibidaj)
         {
            this.nibidaj.y=this.icon.height/2-this.nibidaj.height/2;
            this.nibidaj.x=menuniwo-30;
         }
         this.pudidibas.x=4;
         this.pudidibas.y=this.icon.height+2;
         if(contains(this.line1))
         {
            this.line1.x=8;
            this.line1.y=this.pudidibas.y+this.pudidibas.height+8;
            this.myleginu.x=4;
            this.myleginu.y=this.line1.y+8;
         }
         else
         {
            this.line1.y=this.pudidibas.y+this.pudidibas.height;
            this.myleginu.y=this.line1.y;
         }
         this.line2.x=8;
         this.line2.y=this.myleginu.y+this.myleginu.height+8;
         var _loc1_:uint = this.line2.y+8;
         if(this.qyleramo)
         {
            this.qyleramo.x=4;
            this.qyleramo.y=_loc1_;
            _loc1_=_loc1_+this.qyleramo.height;
         }
         if(this.temo)
         {
            if(contains(this.temo))
            {
               this.temo.x=4;
               this.temo.y=_loc1_;
            }
         }
         return;
      }

      private function zififun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.curItemXML!=null)
         {
            this.rat=this.gilij.ActionMapperAbstractopizu(this.kubiw,this.curItemXML);
         }
         else
         {
            this.rat=new Wyceja();
         }
         return;
      }
   }

}   import jediwip.Kybidu;
   import jediwip.AppendingLineBuilder;


   class Effect extends Object
   {
      function Effect(param1:String, param2:Object) {
         super();
         this.name_=param1;
         this.valueReplacements_=param2;
         return;
      }

      public var name_:String;

      public var valueReplacements_:Object;

      public var replacementColor_:uint = 16777103;

      public var color_:uint = 11776947;

      public function setColor(param1:uint) : Effect {
         this.color_=param1;
         return this;
      }

      public function setReplacementsColor(param1:uint) : Effect {
         this.replacementColor_=param1;
         return this;
      }

      public function getValueReplacementsWithColor() : Object {
         var _loc4_:String = null;
         var _loc5_:Kybidu = null;
         var _loc1_:Object = {};
         var _loc2_:* = "";
         var _loc3_:* = "";
         if(this.replacementColor_)
         {
            _loc2_="</font><font color=\"#"+this.replacementColor_.toString(16)+"\">";
            _loc3_="</font><font color=\"#"+this.color_.toString(16)+"\">";
         }
         for (_loc4_ in this.valueReplacements_)
         {
            if(this.valueReplacements_[_loc4_] is AppendingLineBuilder)
            {
               _loc1_[_loc4_]=this.valueReplacements_[_loc4_];
            }
            else
            {
               if(this.valueReplacements_[_loc4_] is Kybidu)
               {
                  _loc5_=this.valueReplacements_[_loc4_] as Kybidu;
                  _loc5_.setPrefix(_loc2_).setPostfix(_loc3_);
                  _loc1_[_loc4_]=_loc5_;
               }
               else
               {
                  _loc1_[_loc4_]=_loc2_+this.valueReplacements_[_loc4_]+_loc3_;
               }
            }
         }
         return _loc1_;
      }
   }


   class Restriction extends Object
   {
      function Restriction(param1:String, param2:uint, param3:Boolean) {
         super();
         this.text_=param1;
         this.color_=param2;
         this.bold_=param3;
         return;
      }

      public var text_:String;

      public var color_:uint;

      public var bold_:Boolean;
   }
