package pigeguwo
{
[CLASS1086]   import flash.display.Bitmap;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Detys;
   import com.company.assembleegameclient.objects.Player;
   import __AS3__.vec.Vector;
   import totuhare.Javo;
   import flash.filters.DropShadowFilter;
   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import totuhare.Zufi;
   import kuzycyw.Gywow;
   import jyz.StatData;
   import zohom.Jenag;
   import totuhare.Qebar;
   import com.company.util.Sojef;
   import aaa.Parameters;


   public class EquipmentToolTip extends Jazyv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function EquipmentToolTip(param1:int, param2:Player, param3:int, param4:String) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         this.givufe=new Vector.<Effect>();
         this.objectType=param1;
         this.player=param2;
         this.fizi=param3;
         this.qodajec=param4;
         this.boz=param2?param2.boz():false;
         this.lawyci=param2?ObjectLibrary.bitisoju(param1,param2):false;
         var _loc5_:int = param2?ObjectLibrary.pafynur(param1,param2):-1;
         var _loc6_:uint = (this.lawyci)||this.player==null?3552822:6036765;
         var _loc7_:uint = (this.lawyci)||param2==null?10197915:10965039;
         super(_loc6_,1,_loc7_,1,true);
         this.sufykyhany=new Dumaku();
         this.gonel=ObjectLibrary.zedij[param1];
         this.jicygiw=!(_loc5_==-1);
         this.jenacida=new Vector.<Effect>();
         this.myl=int(this.gonel.SlotType);
         if(this.player==null)
         {
            this.curItemXML=this.gonel;
         }
         else
         {
            if(this.jicygiw)
            {
               if(this.player.wasidu[_loc5_]!=-1)
               {
                  this.curItemXML=ObjectLibrary.zedij[this.player.wasidu[_loc5_]];
               }
            }
         }
         this.getimob();
         this.nyposo();
         this.gygy();
         this.nizihow();
         this.susytaf();
         this.mimera();
         this.zyzevumub();
         this.cajohimyl();
         this.waf();
         this.tecyze();
         this.nage();
         this.cerimiqy();
         this.mafa();
         this.misiquwe();
         this.felik();
         this.jowec();
         this.jaqatavu();
         this.typo();
         return;
      }

      private static const dolu:int = 230;

      private var icon:Bitmap;

      private var qysih:Capitu;

      private var wipuf:Capitu;

      private var jim:Capitu;

      private var line1:Detys;

      private var vapunyma:Capitu;

      private var line2:Detys;

      private var julyz:Capitu;

      private var player:Player;

      private var jicygiw:Boolean = false;

      private var objectType:int;

      private var curItemXML:XML = null;

      private var gonel:XML = null;

      private var sufykyhany:Dumaku;

      private var vave:Vector.<Restriction>;

      private var jenacida:Vector.<Effect>;

      private var givufe:Vector.<Effect>;

      private var myl:int;

      private var fizi:int;

      private var qadi:uint;

      private var qodajec:String;

      private var boz:Boolean;

      private var lawyci:Boolean;

      private var gidam:Lyda;

      private var malomos:Capitu;

      private function typo() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         if(this.gonel.hasOwnProperty("feedPower"))
         {
            _loc1_=(this.lawyci)||this.player==null?16777215:16549442;
            this.malomos=new Capitu().setSize(12).setColor(_loc1_).setBold(true).setTextWidth(dolu-this.icon.width-4-30).setWordWrap(true);
            this.malomos.setStringBuilder(new Javo().setString("Feed Power: "+this.gonel.feedPower));
            this.malomos.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            juwocez.push(this.malomos.textChanged);
            addChild(this.malomos);
         }
         return;
      }

      private function mimera() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:XMLList = null;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:AppendingLineBuilder = null;
         if(this.gonel.hasOwnProperty("ExtraTooltipData"))
         {
            _loc1_=this.gonel.ExtraTooltipData.EffectInfo;
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
                  _loc6_.pushParams(_loc4_,{},Hug.fyzep(16777103),Hug.pijef());
               }
               _loc6_.setDelimiter(_loc5_);
               this.givufe.push(new Effect(Kefyfa.kemodanuf,{data:_loc6_}));
            }
         }
         return;
      }

      private function bohopida() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.jicygiw)&&this.curItemXML==null;
      }

      private function getimob() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:XML = ObjectLibrary.zedij[this.objectType];
         var _loc2_:* = 5;
         if(_loc1_.hasOwnProperty("ScaleValue"))
         {
            _loc2_=_loc1_.ScaleValue;
         }
         var _loc3_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.objectType,60,true,true,_loc2_);
         _loc3_=BitmapUtil.wukofy(_loc3_,4,4,_loc3_.width-8,_loc3_.height-8);
         this.icon=new Bitmap(_loc3_);
         addChild(this.icon);
         return;
      }

      private function gygy() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:* = this.biwibykap()==false;
         var _loc2_:* = this.gonel.hasOwnProperty("Consumable")==false;
         var _loc3_:* = this.gonel.hasOwnProperty("Treasure")==false;
         var _loc4_:Boolean = this.gonel.hasOwnProperty("Tier");
         if((_loc1_)&&(_loc2_)&&(_loc3_))
         {
            this.wipuf=new Capitu().setSize(16).setColor(16777215).setTextWidth(30).setBold(true);
            if(_loc4_)
            {
               this.wipuf.setStringBuilder(new Zufi().setParams(Kefyfa.qyhocy,{tier:this.gonel.Tier}));
            }
            else
            {
               this.wipuf.setColor(9055202);
               this.wipuf.setStringBuilder(new Zufi().setParams(Kefyfa.dehunywo));
            }
            addChild(this.wipuf);
         }
         return;
      }

      private function biwibykap() : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var activateTags:XMLList = null;
         for each (_loc6_ in this.gonel.Activate)
         {
            with(_loc6_)
            {
               
               if(text()=="PermaPet")
               {
                  _loc2_[_loc3_]=_loc5_;
               }
            }
         }
         activateTags=_loc2_;
         return activateTags.length()>=1;
      }

      private function nyposo() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = (this.lawyci)||this.player==null?16777215:16549442;
         this.qysih=new Capitu().setSize(16).setColor(_loc1_).setBold(true).setTextWidth(dolu-this.icon.width-4-30).setWordWrap(true);
         this.qysih.setStringBuilder(new Zufi().setParams(ObjectLibrary.mafiwape[this.objectType]));
         this.qysih.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         juwocez.push(this.qysih.textChanged);
         addChild(this.qysih);
         return;
      }

      private function kyfyfugad() : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:XMLList = null;
         var _loc2_:Vector.<Effect> = null;
         var _loc3_:XML = null;
         if(this.gonel.hasOwnProperty("ExtraTooltipData"))
         {
            _loc1_=this.gonel.ExtraTooltipData.EffectInfo;
            _loc2_=new Vector.<Effect>();
            for each (_loc3_ in _loc1_)
            {
               _loc2_.push(new Effect(_loc3_.attribute("name"),_loc3_.attribute("description")));
            }
         }
         return "";
      }

      private function misiquwe() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:AppendingLineBuilder = null;
         if(!(this.jenacida.length==0)||!(this.gidam.febup==null)||(this.gonel.hasOwnProperty("ExtraTooltipData")))
         {
            this.line1=new Detys(dolu-12,0);
            this.vapunyma=new Capitu().setSize(14).setColor(11776947).setTextWidth(dolu).setWordWrap(true).setHTML(true);
            _loc1_=this.capanizar();
            this.vapunyma.setStringBuilder(_loc1_);
            this.vapunyma.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            if(_loc1_.cuvet())
            {
               addChild(this.line1);
               addChild(this.vapunyma);
            }
         }
         return;
      }

      private function capanizar() : AppendingLineBuilder {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         this.naj(this.givufe,_loc1_);
         if(this.gidam.febup.cuvet())
         {
            _loc1_.pushParams(Kefyfa.kemodanuf,{data:this.gidam.febup});
         }
         this.naj(this.jenacida,_loc1_);
         return _loc1_;
      }

      private function naj(param1:Vector.<Effect>, param2:AppendingLineBuilder) : void {
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

      private function zyzevumub() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.gonel.hasOwnProperty("NumProjectiles"))&&!(this.gidam.vase.hasOwnProperty(this.gonel.NumProjectiles.toXMLString())==true))
         {
            this.jenacida.push(new Effect(Kefyfa.waba,{numShots:this.gonel.NumProjectiles}));
         }
         return;
      }

      private function mafa() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         if(this.gonel.hasOwnProperty("FameBonus"))
         {
            _loc1_=int(this.gonel.FameBonus);
            _loc2_=this.lawyci?Hug.jujuhiq:Hug.fyje;
            if(!(this.curItemXML==null)&&(this.curItemXML.hasOwnProperty("FameBonus")))
            {
               _loc3_=int(this.curItemXML.FameBonus.text());
               _loc2_=Hug.conehody(_loc1_-_loc3_);
            }
            this.jenacida.push(new Effect(Kefyfa.huvokeco,{percent:this.gonel.FameBonus+"%"}).setReplacementsColor(_loc2_));
         }
         return;
      }

      private function cerimiqy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.gonel.hasOwnProperty("MpEndCost"))
         {
            if(!this.gidam.vase[this.gonel.MpEndCost[0].toXMLString()])
            {
               this.jenacida.push(new Effect(Kefyfa.lab,{cost:this.gonel.MpEndCost}));
            }
         }
         else
         {
            if((this.gonel.hasOwnProperty("MpCost"))&&!this.gidam.vase[this.gonel.MpCost[0].toXMLString()])
            {
               if(!this.gidam.vase[this.gonel.MpCost[0].toXMLString()])
               {
                  this.jenacida.push(new Effect(Kefyfa.lab,{cost:this.gonel.MpCost}));
               }
            }
         }
         return;
      }

      private function nage() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.gonel.hasOwnProperty("Doses"))
         {
            this.jenacida.push(new Effect(Kefyfa.qib,{dose:this.gonel.Doses}));
         }
         return;
      }

      private function cajohimyl() : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc1_:XML = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:XML = null;
         if((this.gonel.hasOwnProperty("Projectile"))&&!this.gidam.vase.hasOwnProperty(this.gonel.Projectile.toXMLString()))
         {
            _loc1_=XML(this.gonel.Projectile);
            _loc2_=int(_loc1_.MinDamage);
            _loc3_=int(_loc1_.MaxDamage);
            this.jenacida.push(new Effect(Kefyfa.DAMAGE,{damage:(_loc2_==_loc3_?_loc2_:_loc2_+" - "+_loc3_).toString()}));
            _loc4_=Number(_loc1_.Speed)*Number(_loc1_.LifetimeMS)/10000;
            this.jenacida.push(new Effect(Kefyfa.puc,{range:Hug.tucywi(_loc4_)}));
            if(this.gonel.Projectile.hasOwnProperty("MultiHit"))
            {
               this.jenacida.push(new Effect(Kefyfa.worigyw,{}).setColor(Hug.fyje));
            }
            if(this.gonel.Projectile.hasOwnProperty("PassesCover"))
            {
               this.jenacida.push(new Effect(Kefyfa.miryjupuv,{}).setColor(Hug.fyje));
            }
            for each (_loc5_ in _loc1_.ConditionEffect)
            {
               if(this.gidam.vase[_loc5_.toXMLString()]!=null)
               {
               }
               else
               {
                  this.jenacida.push(new Effect(Kefyfa.binakodo,{effect:""}));
                  this.jenacida.push(new Effect(Kefyfa.dyguzer,
                     {
                        effect:this.gonel.Projectile.ConditionEffect,
                        duration:this.gonel.Projectile.ConditionEffect.@duration
                     }
                  ).setColor(Hug.fyje));
               }
            }
         }
         return;
      }

      private function waf() : void {
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
         for each (_loc1_ in this.gonel.Activate)
         {
            _loc5_=this.gidam.vase[_loc1_.toXMLString()];
            if(this.gidam.vase[_loc1_.toXMLString()]==true)
            {
            }
            else
            {
               _loc6_=_loc1_.toString();
               switch(_loc6_)
               {
                  case Gywow.cyrehunyw:
                     this.jenacida.push(new Effect(Kefyfa.zod,{effect:new AppendingLineBuilder().pushParams(Kefyfa.vejyseb,{range:_loc1_.@range},Hug.fyzep(Hug.fyje),Hug.pijef())}));
                     this.jenacida.push(new Effect(Kefyfa.dyguzer,
                        {
                           effect:_loc1_.@effect,
                           duration:_loc1_.@duration
                        }
                     ).setColor(Hug.fyje));
                     break;
                  case Gywow.hyme:
                     this.jenacida.push(new Effect(Kefyfa.jocywob,{effect:""}));
                     this.jenacida.push(new Effect(Kefyfa.dyguzer,
                        {
                           effect:_loc1_.@effect,
                           duration:_loc1_.@duration
                        }
                     ));
                     break;
                  case Gywow.fucibume:
                     this.jenacida.push(new Effect(Kefyfa.siri,
                        {
                           statAmount:"+"+_loc1_.@amount+" ",
                           statName:new Zufi().setParams(Kefyfa.hosu)
                        }
                     ));
                     break;
                  case Gywow.ficopovy:
                     this.jenacida.push(new Effect(Kefyfa.kasator,{effect:new AppendingLineBuilder().pushParams(Kefyfa.dakuza,
                        {
                           amount:_loc1_.@amount,
                           range:_loc1_.@range
                        }
                     ,Hug.fyzep(Hug.fyje),Hug.pijef())}));
                     break;
                  case Gywow.pulaneqyq:
                     this.jenacida.push(new Effect(Kefyfa.siri,
                        {
                           statAmount:"+"+_loc1_.@amount+" ",
                           statName:new Zufi().setParams(Kefyfa.dulu)
                        }
                     ));
                     break;
                  case Gywow.miny:
                     this.jenacida.push(new Effect(Kefyfa.rig,_loc1_.@amount+" MP at "+_loc1_.@range+" sqrs"));
                     break;
                  case Gywow.TELEPORT:
                     this.jenacida.push(new Effect(Kefyfa.kemodanuf,{data:new Zufi().setParams(Kefyfa.suly)}));
                     break;
                  case Gywow.dydyda:
                     this.jenacida.push(new Effect(Kefyfa.gulugug,{effect:new AppendingLineBuilder().pushParams(Kefyfa.dakuza,
                        {
                           amount:_loc1_.@totalDamage,
                           range:_loc1_.@radius
                        }
                     ,Hug.fyzep(Hug.fyje),Hug.pijef())}));
                     break;
                  case Gywow.jymowag:
                     _loc7_=_loc1_.hasOwnProperty("@condEffect")?_loc1_.@condEffect:new Zufi().setParams(Kefyfa.lugoj);
                     _loc8_=_loc1_.hasOwnProperty("@condDuration")?_loc1_.@condDuration:"5";
                     this.jenacida.push(new Effect(Kefyfa.jymowag,{data:new AppendingLineBuilder().pushParams(Kefyfa.dakuza,
                        {
                           amount:_loc1_.@totalDamage,
                           range:_loc1_.@radius
                        }
                     ,Hug.fyzep(Hug.fyje),Hug.pijef()).pushParams(Kefyfa.dyguzer,
                        {
                           effect:_loc7_,
                           duration:_loc8_
                        }
                     ,Hug.fyzep(Hug.fyje),Hug.pijef())}));
                     break;
                  case Gywow.deboju:
                     this.jenacida.push(new Effect(Kefyfa.lehitaso,{stasis:new AppendingLineBuilder().pushParams(Kefyfa.jygalyji,{duration:_loc1_.@duration},Hug.fyzep(Hug.fyje),Hug.pijef())}));
                     break;
                  case Gywow.til:
                     this.jenacida.push(new Effect(Kefyfa.til,{data:new AppendingLineBuilder().pushParams(Kefyfa.jygalyji,{duration:_loc1_.@duration},Hug.fyzep(Hug.fyje),Hug.pijef())}));
                     break;
                  case Gywow.givesuci:
                     this.jenacida.push(new Effect(Kefyfa.givesuci,{data:new AppendingLineBuilder().pushParams(Kefyfa.dolyzocy,
                        {
                           damage:_loc1_.@totalDamage,
                           targets:_loc1_.@maxTargets
                        }
                     ,Hug.fyzep(Hug.fyje),Hug.pijef())}));
                     break;
                  case Gywow.jinynyse:
                     this.jenacida.push(new Effect(Kefyfa.jinynyse,{data:""}));
                     this.jenacida.push(new Effect(Kefyfa.pepeb,
                        {
                           damage:_loc1_.@totalDamage,
                           duration:_loc1_.@duration,
                           radius:_loc1_.@radius
                        }
                     ).setColor(Hug.fyje));
                     break;
                  case Gywow.losarale:
                     this.jenacida.push(new Effect(Kefyfa.cij,{}).setColor(Hug.fyje));
                     break;
                  case Gywow.higami:
                     this.jenacida.push(new Effect(Kefyfa.cij,{}).setColor(Hug.fyje));
                     break;
                  case Gywow.siri:
                     _loc3_=int(_loc1_.@stat);
                     _loc4_=int(_loc1_.@amount);
                     _loc9_={};
                     if(!(_loc3_==StatData.fag)&&!(_loc3_==StatData.golifikik))
                     {
                        _loc2_=Kefyfa.nylukewy;
                        _loc9_["statName"]=new Zufi().setParams(StatData.lyz(_loc3_));
                        this.jenacida.push(new Effect(_loc2_,_loc9_).setColor(16777103));
                     }
                     else
                     {
                        _loc2_=Kefyfa.kemodanuf;
                        _loc10_=new AppendingLineBuilder().setDelimiter(" ");
                        _loc10_.pushParams(Kefyfa.kemodanuf,{data:new Javo("+"+_loc4_)});
                        _loc10_.pushParams(StatData.lyz(_loc3_));
                        _loc9_["data"]=_loc10_;
                        this.jenacida.push(new Effect(_loc2_,_loc9_));
                     }
                     break;
               }
            }
         }
         return;
      }

      private function tecyze() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:XML = null;
         var _loc2_:* = true;
         for each (_loc1_ in this.gonel.ActivateOnEquip)
         {
            this.jenacida.push(new Effect(Kefyfa.sywipuda,""));
            _loc2_=false;
            if(_loc1_.toString()=="IncrementStat")
            {
               this.jenacida.push(new Effect(Kefyfa.siri,this.qyry(_loc1_)).setReplacementsColor(this.misakezo(_loc1_)));
            }
         }
         return;
      }

      private function qyry(param1:XML) : Object {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = int(param1.@stat);
         var _loc3_:int = int(param1.@amount);
         var _loc4_:String = _loc3_>-1?"+":"";
         return 
            {
               statAmount:_loc4_+String(_loc3_)+" ",
               statName:new Zufi().setParams(StatData.lyz(_loc2_))
            }
         ;
      }

      private function misakezo(param1:XML) : uint {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var match:XML = null;
         var otherAmount:int = 0;
         var activateXML:XML = param1;
         var stat:int = int(activateXML.@stat);
         var amount:int = int(activateXML.@amount);
         var textColor:uint = this.lawyci?Hug.jujuhiq:Hug.fyje;
         var otherMatches:XMLList = null;
         if(this.curItemXML!=null)
         {
            for each (_loc7_ in this.curItemXML.ActivateOnEquip)
            {
               with(_loc7_)
               {
                  
                  if(@stat==stat)
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            otherMatches=_loc3_;
         }
         if(!(otherMatches==null)&&otherMatches.length()==1)
         {
            match=XML(otherMatches[0]);
            otherAmount=int(match.@amount);
            textColor=Hug.conehody(amount-otherAmount);
         }
         if(amount<0)
         {
            textColor=16711680;
         }
         return textColor;
      }

      private function qemejogyv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.gonel.hasOwnProperty("Treasure")==false)
         {
            this.vave.push(new Restriction(Kefyfa.wemibity,11776947,false));
            if((this.boz)||this.qodajec==Jenag.CURRENT_PLAYER)
            {
               this.vave.push(new Restriction(Kefyfa.kiwagybi,11776947,false));
            }
            else
            {
               this.vave.push(new Restriction(Kefyfa.hyrylyte,11776947,false));
            }
         }
         return;
      }

      private function figim() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vave.push(new Restriction(Kefyfa.cava,16777215,false));
         return;
      }

      private function ret() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vave.push(new Restriction(Kefyfa.zepafijiq,11776947,false));
         if((this.boz)||this.qodajec==Jenag.CURRENT_PLAYER)
         {
            this.vave.push(new Restriction(Kefyfa.jyv,16777215,false));
         }
         else
         {
            this.vave.push(new Restriction(Kefyfa.nesozyc,16777215,false));
         }
         return;
      }

      private function rade() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vave.push(new Restriction(Kefyfa.ryge,11776947,false));
         this.vave.push(new Restriction(Kefyfa.jyv,16777215,false));
         return;
      }

      private function jowec() : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:XML = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         this.vave=new Vector.<Restriction>();
         if((this.gonel.hasOwnProperty("VaultItem"))&&(!(this.fizi==-1))&&!(this.fizi==ObjectLibrary.ronifyva["Vault Chest"]))
         {
            this.vave.push(new Restriction(Kefyfa.sagybeja,16549442,true));
         }
         if(this.gonel.hasOwnProperty("Soulbound"))
         {
            this.vave.push(new Restriction(Kefyfa.gycade,11776947,false));
         }
         if(this.lawyci)
         {
            if(this.gonel.hasOwnProperty("Usable"))
            {
               this.figim();
               this.qemejogyv();
            }
            else
            {
               if(this.gonel.hasOwnProperty("Consumable"))
               {
                  this.ret();
               }
               else
               {
                  if(this.gonel.hasOwnProperty("InvUse"))
                  {
                     this.rade();
                  }
                  else
                  {
                     this.qemejogyv();
                  }
               }
            }
         }
         else
         {
            if(this.player!=null)
            {
               this.vave.push(new Restriction(Kefyfa.zipek,16549442,true));
            }
         }
         var _loc1_:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
         if(_loc1_!=null)
         {
            this.vave.push(new Restriction(Kefyfa.gyjac,11776947,false));
         }
         for each (_loc2_ in this.gonel.EquipRequirement)
         {
            _loc3_=ObjectLibrary.rycajy(_loc2_,this.player);
            if(_loc2_.toString()=="Stat")
            {
               _loc4_=int(_loc2_.@stat);
               _loc5_=int(_loc2_.@value);
               this.vave.push(new Restriction("Requires "+StatData.lyz(_loc4_)+" of "+_loc5_,_loc3_?11776947:16549442,_loc3_?false:true));
            }
         }
         return;
      }

      private function felik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.line2=new Detys(dolu-12,0);
         addChild(this.line2);
         return;
      }

      private function jaqatavu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vave.length!=0)
         {
            this.julyz=new Capitu().setSize(14).setColor(11776947).setTextWidth(dolu-4).setIndent(-10).setLeftMargin(10).setWordWrap(true).setHTML(true);
            this.julyz.setStringBuilder(this.cihim());
            this.julyz.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            juwocez.push(this.julyz.textChanged);
            addChild(this.julyz);
         }
         return;
      }

      private function cihim() : Qebar {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Restriction = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         for each (_loc2_ in this.vave)
         {
            _loc3_=_loc2_.bold_?"<b>":"";
            _loc3_=_loc3_.concat("<font color=\"#"+_loc2_.color_.toString(16)+"\">");
            _loc4_="</font>";
            _loc4_=_loc4_.concat(_loc2_.bold_?"</b>":"");
            _loc5_=this.player?ObjectLibrary.mafiwape[this.player.objectType_]:"";
            _loc1_.pushParams(_loc2_.text_,
               {
                  unUsableClass:_loc5_,
                  usableClasses:this.qeqequl(),
                  keyCode:Sojef.hekypido[Parameters.data_.useSpecial]
               }
            ,_loc3_,_loc4_);
         }
         return _loc1_;
      }

      private function qeqequl() : Qebar {
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

      private function nizihow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jim=new Capitu().setSize(14).setColor(11776947).setTextWidth(dolu).setWordWrap(true);
         this.jim.setStringBuilder(new Zufi().setParams(String(this.gonel.Description)));
         this.jim.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         juwocez.push(this.jim.textChanged);
         addChild(this.jim);
         return;
      }

      override protected function alignUI() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qysih.x=this.icon.width+4;
         this.qysih.y=this.icon.height/2-this.qysih.height/2;
         if(this.wipuf)
         {
            this.wipuf.y=this.icon.height/2-this.wipuf.height/2;
            this.wipuf.x=dolu-30;
         }
         this.jim.x=4;
         this.jim.y=this.icon.height+2;
         if(contains(this.line1))
         {
            this.line1.x=8;
            this.line1.y=this.jim.y+this.jim.height+8;
            this.vapunyma.x=4;
            this.vapunyma.y=this.line1.y+8;
         }
         else
         {
            this.line1.y=this.jim.y+this.jim.height;
            this.vapunyma.y=this.line1.y;
         }
         this.line2.x=8;
         this.line2.y=this.vapunyma.y+this.vapunyma.height+8;
         var _loc1_:uint = this.line2.y+8;
         if(this.julyz)
         {
            this.julyz.x=4;
            this.julyz.y=_loc1_;
            _loc1_=_loc1_+this.julyz.height;
         }
         if(this.malomos)
         {
            if(contains(this.malomos))
            {
               this.malomos.x=4;
               this.malomos.y=_loc1_;
            }
         }
         return;
      }

      private function susytaf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.curItemXML!=null)
         {
            this.gidam=this.sufykyhany.beqydi(this.gonel,this.curItemXML);
         }
         else
         {
            this.gidam=new Lyda();
         }
         return;
      }
   }
[/CLASS]
}[CLASS1087]   import totuhare.Zufi;
   import totuhare.AppendingLineBuilder;


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
         var _loc5_:Zufi = null;
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
               if(this.valueReplacements_[_loc4_] is Zufi)
               {
                  _loc5_=this.valueReplacements_[_loc4_] as Zufi;
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
[/CLASS][CLASS1088]

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
[/CLASS]