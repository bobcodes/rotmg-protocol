package povopito
{
   import flash.display.Bitmap;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Luvu;
   import com.company.assembleegameclient.objects.Player;
   import __AS3__.vec.Vector;
   import nec.Nara;
   import flash.filters.DropShadowFilter;
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import nec.Sire;
   import cypujavop.StatData;
   import pirus.Tibapyqy;
   import tys.Febij;
   import nec.Zirewe;
   import com.company.util.Kiv;
   import aaa.rotmg.config.UserConfig;


   public class EquipmentToolTip extends Ryduwi
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function EquipmentToolTip(param1:int, param2:Player, param3:int, param4:String) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         this.tosufi=new Vector.<Effect>();
         this.objectType=param1;
         this.player=param2;
         this.gomib=param3;
         this.qogewe=param4;
         this.sibuhydub=param2?param2.sibuhydub():false;
         this.fukodut=param2?ObjectLibrary.pinuwovac(param1,param2):false;
         var _loc5_:int = param2?ObjectLibrary.moqofulo(param1,param2):-1;
         var _loc6_:uint = (this.fukodut)||this.player==null?3552822:6036765;
         var _loc7_:uint = (this.fukodut)||param2==null?10197915:10965039;
         super(_loc6_,1,_loc7_,1,true);
         this.pejajadaj=new Vopiju();
         this.sicacuq=ObjectLibrary.tem[param1];
         this.koguwa=!(_loc5_==-1);
         this.wujarof=new Vector.<Effect>();
         this.gafepomal=int(this.sicacuq.SlotType);
         if(this.player==null)
         {
            this.curItemXML=this.sicacuq;
         }
         else
         {
            if(this.koguwa)
            {
               if(this.player.jevuqike[_loc5_]!=-1)
               {
                  this.curItemXML=ObjectLibrary.tem[this.player.jevuqike[_loc5_]];
               }
            }
         }
         this.qegehu();
         this.zew();
         this.suluqi();
         this.subok();
         this.qefigyby();
         this.tiha();
         this.nafylap();
         this.pev();
         this.bohad();
         this.revoz();
         this.buv();
         this.zomiv();
         this.zese();
         this.dizugu();
         this.kub();
         this.gezyfy();
         this.pane();
         this.jetetome();
         return;
      }

      private static const cupuzini:int = 230;

      private var icon:Bitmap;

      private var lupuguryb:Lufub;

      private var kopakun:Lufub;

      private var cilod:Lufub;

      private var line1:Luvu;

      private var lywyjy:Lufub;

      private var line2:Luvu;

      private var zoni:Lufub;

      private var player:Player;

      private var koguwa:Boolean = false;

      private var objectType:int;

      private var curItemXML:XML = null;

      private var sicacuq:XML = null;

      private var pejajadaj:Vopiju;

      private var cacatemeg:Vector.<Restriction>;

      private var wujarof:Vector.<Effect>;

      private var tosufi:Vector.<Effect>;

      private var gafepomal:int;

      private var gomib:int;

      private var qito:uint;

      private var qogewe:String;

      private var sibuhydub:Boolean;

      private var fukodut:Boolean;

      private var huzihugy:Holamoraq;

      private var baz:Lufub;

      private function jetetome() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         if(this.sicacuq.hasOwnProperty("feedPower"))
         {
            _loc1_=(this.fukodut)||this.player==null?16777215:16549442;
            this.baz=new Lufub().setSize(12).setColor(_loc1_).setBold(true).setTextWidth(cupuzini-this.icon.width-4-30).setWordWrap(true);
            this.baz.setStringBuilder(new Nara().setString("Feed Power: "+this.sicacuq.feedPower));
            this.baz.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            jiguvovu.push(this.baz.textChanged);
            addChild(this.baz);
         }
         return;
      }

      private function tiha() : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc1_:XMLList = null;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:AppendingLineBuilder = null;
         if(this.sicacuq.hasOwnProperty("ExtraTooltipData"))
         {
            _loc1_=this.sicacuq.ExtraTooltipData.EffectInfo;
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
                  _loc6_.pushParams(_loc4_,{},Fury.jocup(16777103),Fury.rig());
               }
               _loc6_.setDelimiter(_loc5_);
               this.tosufi.push(new Effect(I18nKeys.kuw,{data:_loc6_}));
            }
         }
         return;
      }

      private function vyfyg() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.koguwa)&&this.curItemXML==null;
      }

      private function qegehu() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:XML = ObjectLibrary.tem[this.objectType];
         var _loc2_:* = 5;
         if(_loc1_.hasOwnProperty("ScaleValue"))
         {
            _loc2_=_loc1_.ScaleValue;
         }
         var _loc3_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.objectType,60,true,true,_loc2_);
         _loc3_=BitmapUtil.wygoci(_loc3_,4,4,_loc3_.width-8,_loc3_.height-8);
         this.icon=new Bitmap(_loc3_);
         addChild(this.icon);
         return;
      }

      private function suluqi() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:* = this.siratover()==false;
         var _loc2_:* = this.sicacuq.hasOwnProperty("Consumable")==false;
         var _loc3_:* = this.sicacuq.hasOwnProperty("Treasure")==false;
         var _loc4_:Boolean = this.sicacuq.hasOwnProperty("Tier");
         if((_loc1_)&&(_loc2_)&&(_loc3_))
         {
            this.kopakun=new Lufub().setSize(16).setColor(16777215).setTextWidth(30).setBold(true);
            if(_loc4_)
            {
               this.kopakun.setStringBuilder(new Sire().setParams(I18nKeys.roru,{tier:this.sicacuq.Tier}));
            }
            else
            {
               this.kopakun.setColor(9055202);
               this.kopakun.setStringBuilder(new Sire().setParams(I18nKeys.jeribe));
            }
            addChild(this.kopakun);
         }
         return;
      }

      private function siratover() : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var activateTags:XMLList = null;
         for each (_loc6_ in this.sicacuq.Activate)
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

      private function zew() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = (this.fukodut)||this.player==null?16777215:16549442;
         this.lupuguryb=new Lufub().setSize(16).setColor(_loc1_).setBold(true).setTextWidth(cupuzini-this.icon.width-4-30).setWordWrap(true);
         this.lupuguryb.setStringBuilder(new Sire().setParams(ObjectLibrary.fajocyd[this.objectType]));
         this.lupuguryb.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         jiguvovu.push(this.lupuguryb.textChanged);
         addChild(this.lupuguryb);
         return;
      }

      private function mawage() : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:XMLList = null;
         var _loc2_:Vector.<Effect> = null;
         var _loc3_:XML = null;
         if(this.sicacuq.hasOwnProperty("ExtraTooltipData"))
         {
            _loc1_=this.sicacuq.ExtraTooltipData.EffectInfo;
            _loc2_=new Vector.<Effect>();
            for each (_loc3_ in _loc1_)
            {
               _loc2_.push(new Effect(_loc3_.attribute("name"),_loc3_.attribute("description")));
            }
         }
         return "";
      }

      private function dizugu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:AppendingLineBuilder = null;
         if(!(this.wujarof.length==0)||!(this.huzihugy.hicawel==null)||(this.sicacuq.hasOwnProperty("ExtraTooltipData")))
         {
            this.line1=new Luvu(cupuzini-12,0);
            this.lywyjy=new Lufub().setSize(14).setColor(11776947).setTextWidth(cupuzini).setWordWrap(true).setHTML(true);
            _loc1_=this.huwew();
            this.lywyjy.setStringBuilder(_loc1_);
            this.lywyjy.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            if(_loc1_.wagavo())
            {
               addChild(this.line1);
               addChild(this.lywyjy);
            }
         }
         return;
      }

      private function huwew() : AppendingLineBuilder {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         this.pelywod(this.tosufi,_loc1_);
         if(this.huzihugy.hicawel.wagavo())
         {
            _loc1_.pushParams(I18nKeys.kuw,{data:this.huzihugy.hicawel});
         }
         this.pelywod(this.wujarof,_loc1_);
         return _loc1_;
      }

      private function pelywod(param1:Vector.<Effect>, param2:AppendingLineBuilder) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
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

      private function nafylap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.sicacuq.hasOwnProperty("NumProjectiles"))&&!(this.huzihugy.gawoc.hasOwnProperty(this.sicacuq.NumProjectiles.toXMLString())==true))
         {
            this.wujarof.push(new Effect(I18nKeys.jadyhe,{numShots:this.sicacuq.NumProjectiles}));
         }
         return;
      }

      private function zese() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:uint = 0;
         var _loc3_:* = 0;
         if(this.sicacuq.hasOwnProperty("FameBonus"))
         {
            _loc1_=int(this.sicacuq.FameBonus);
            _loc2_=this.fukodut?Fury.quky:Fury.tiheb;
            if(!(this.curItemXML==null)&&(this.curItemXML.hasOwnProperty("FameBonus")))
            {
               _loc3_=int(this.curItemXML.FameBonus.text());
               _loc2_=Fury.gynuha(_loc1_-_loc3_);
            }
            this.wujarof.push(new Effect(I18nKeys.vunupety,{percent:this.sicacuq.FameBonus+"%"}).setReplacementsColor(_loc2_));
         }
         return;
      }

      private function zomiv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.sicacuq.hasOwnProperty("MpEndCost"))
         {
            if(!this.huzihugy.gawoc[this.sicacuq.MpEndCost[0].toXMLString()])
            {
               this.wujarof.push(new Effect(I18nKeys.cosadiz,{cost:this.sicacuq.MpEndCost}));
            }
         }
         else
         {
            if((this.sicacuq.hasOwnProperty("MpCost"))&&!this.huzihugy.gawoc[this.sicacuq.MpCost[0].toXMLString()])
            {
               if(!this.huzihugy.gawoc[this.sicacuq.MpCost[0].toXMLString()])
               {
                  this.wujarof.push(new Effect(I18nKeys.cosadiz,{cost:this.sicacuq.MpCost}));
               }
            }
         }
         return;
      }

      private function buv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.sicacuq.hasOwnProperty("Doses"))
         {
            this.wujarof.push(new Effect(I18nKeys.dobaker,{dose:this.sicacuq.Doses}));
         }
         return;
      }

      private function pev() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:XML = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         var _loc5_:XML = null;
         if((this.sicacuq.hasOwnProperty("Projectile"))&&!this.huzihugy.gawoc.hasOwnProperty(this.sicacuq.Projectile.toXMLString()))
         {
            _loc1_=XML(this.sicacuq.Projectile);
            _loc2_=int(_loc1_.MinDamage);
            _loc3_=int(_loc1_.MaxDamage);
            this.wujarof.push(new Effect(I18nKeys.DAMAGE,{damage:(_loc2_==_loc3_?_loc2_:_loc2_+" - "+_loc3_).toString()}));
            _loc4_=Number(_loc1_.Speed)*Number(_loc1_.LifetimeMS)/10000;
            this.wujarof.push(new Effect(I18nKeys.hetez,{range:Fury.cas(_loc4_)}));
            if(this.sicacuq.Projectile.hasOwnProperty("MultiHit"))
            {
               this.wujarof.push(new Effect(I18nKeys.gysofo,{}).setColor(Fury.tiheb));
            }
            if(this.sicacuq.Projectile.hasOwnProperty("PassesCover"))
            {
               this.wujarof.push(new Effect(I18nKeys.wowiluq,{}).setColor(Fury.tiheb));
            }
            for each (_loc5_ in _loc1_.ConditionEffect)
            {
               if(this.huzihugy.gawoc[_loc5_.toXMLString()]!=null)
               {
               }
               else
               {
                  this.wujarof.push(new Effect(I18nKeys.cipym,{effect:""}));
                  this.wujarof.push(new Effect(I18nKeys.qok,
                     {
                        effect:this.sicacuq.Projectile.ConditionEffect,
                        duration:this.sicacuq.Projectile.ConditionEffect.@duration
                     }
                  ).setColor(Fury.tiheb));
               }
            }
         }
         return;
      }

      private function bohad() : void {
         var _loc14_:* = false;
         var _loc15_:* = true;
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
         for each (_loc1_ in this.sicacuq.Activate)
         {
            _loc5_=this.huzihugy.gawoc[_loc1_.toXMLString()];
            if(this.huzihugy.gawoc[_loc1_.toXMLString()]==true)
            {
            }
            else
            {
               _loc6_=_loc1_.toString();
               switch(_loc6_)
               {
                  case Tibapyqy.suvacawew:
                     this.wujarof.push(new Effect(I18nKeys.done,{effect:new AppendingLineBuilder().pushParams(I18nKeys.bit,{range:_loc1_.@range},Fury.jocup(Fury.tiheb),Fury.rig())}));
                     this.wujarof.push(new Effect(I18nKeys.qok,
                        {
                           effect:_loc1_.@effect,
                           duration:_loc1_.@duration
                        }
                     ).setColor(Fury.tiheb));
                     break;
                  case Tibapyqy.pec:
                     this.wujarof.push(new Effect(I18nKeys.sazekady,{effect:""}));
                     this.wujarof.push(new Effect(I18nKeys.qok,
                        {
                           effect:_loc1_.@effect,
                           duration:_loc1_.@duration
                        }
                     ));
                     break;
                  case Tibapyqy.wiworov:
                     this.wujarof.push(new Effect(I18nKeys.vurino,
                        {
                           statAmount:"+"+_loc1_.@amount+" ",
                           statName:new Sire().setParams(I18nKeys.fiwus)
                        }
                     ));
                     break;
                  case Tibapyqy.pafiwew:
                     this.wujarof.push(new Effect(I18nKeys.jahiqes,{effect:new AppendingLineBuilder().pushParams(I18nKeys.cibizam,
                        {
                           amount:_loc1_.@amount,
                           range:_loc1_.@range
                        }
                     ,Fury.jocup(Fury.tiheb),Fury.rig())}));
                     break;
                  case Tibapyqy.baha:
                     this.wujarof.push(new Effect(I18nKeys.vurino,
                        {
                           statAmount:"+"+_loc1_.@amount+" ",
                           statName:new Sire().setParams(I18nKeys.feput)
                        }
                     ));
                     break;
                  case Tibapyqy.binaqijil:
                     this.wujarof.push(new Effect(I18nKeys.buvuvukim,_loc1_.@amount+" MP at "+_loc1_.@range+" sqrs"));
                     break;
                  case Tibapyqy.TELEPORT:
                     this.wujarof.push(new Effect(I18nKeys.kuw,{data:new Sire().setParams(I18nKeys.cykabuv)}));
                     break;
                  case Tibapyqy.vagajic:
                     this.wujarof.push(new Effect(I18nKeys.nemyqel,{effect:new AppendingLineBuilder().pushParams(I18nKeys.cibizam,
                        {
                           amount:_loc1_.@totalDamage,
                           range:_loc1_.@radius
                        }
                     ,Fury.jocup(Fury.tiheb),Fury.rig())}));
                     break;
                  case Tibapyqy.zudine:
                     _loc7_=_loc1_.hasOwnProperty("@condEffect")?_loc1_.@condEffect:new Sire().setParams(I18nKeys.mesemywe);
                     _loc8_=_loc1_.hasOwnProperty("@condDuration")?_loc1_.@condDuration:"5";
                     this.wujarof.push(new Effect(I18nKeys.zudine,{data:new AppendingLineBuilder().pushParams(I18nKeys.cibizam,
                        {
                           amount:_loc1_.@totalDamage,
                           range:_loc1_.@radius
                        }
                     ,Fury.jocup(Fury.tiheb),Fury.rig()).pushParams(I18nKeys.qok,
                        {
                           effect:_loc7_,
                           duration:_loc8_
                        }
                     ,Fury.jocup(Fury.tiheb),Fury.rig())}));
                     break;
                  case Tibapyqy.foqodune:
                     this.wujarof.push(new Effect(I18nKeys.wegal,{stasis:new AppendingLineBuilder().pushParams(I18nKeys.hizeh,{duration:_loc1_.@duration},Fury.jocup(Fury.tiheb),Fury.rig())}));
                     break;
                  case Tibapyqy.puhumyjo:
                     this.wujarof.push(new Effect(I18nKeys.puhumyjo,{data:new AppendingLineBuilder().pushParams(I18nKeys.hizeh,{duration:_loc1_.@duration},Fury.jocup(Fury.tiheb),Fury.rig())}));
                     break;
                  case Tibapyqy.gubegupa:
                     this.wujarof.push(new Effect(I18nKeys.gubegupa,{data:new AppendingLineBuilder().pushParams(I18nKeys.vowamof,
                        {
                           damage:_loc1_.@totalDamage,
                           targets:_loc1_.@maxTargets
                        }
                     ,Fury.jocup(Fury.tiheb),Fury.rig())}));
                     break;
                  case Tibapyqy.qofadyr:
                     this.wujarof.push(new Effect(I18nKeys.qofadyr,{data:""}));
                     this.wujarof.push(new Effect(I18nKeys.varuheqy,
                        {
                           damage:_loc1_.@totalDamage,
                           duration:_loc1_.@duration,
                           radius:_loc1_.@radius
                        }
                     ).setColor(Fury.tiheb));
                     break;
                  case Tibapyqy.jar:
                     this.wujarof.push(new Effect(I18nKeys.busij,{}).setColor(Fury.tiheb));
                     break;
                  case Tibapyqy.figywoc:
                     this.wujarof.push(new Effect(I18nKeys.busij,{}).setColor(Fury.tiheb));
                     break;
                  case Tibapyqy.vurino:
                     _loc3_=int(_loc1_.@stat);
                     _loc4_=int(_loc1_.@amount);
                     _loc9_={};
                     if(!(_loc3_==StatData.lamoge)&&!(_loc3_==StatData.lyjejiku))
                     {
                        _loc2_=I18nKeys.bubamudy;
                        _loc9_["statName"]=new Sire().setParams(StatData.jacypana(_loc3_));
                        this.wujarof.push(new Effect(_loc2_,_loc9_).setColor(16777103));
                     }
                     else
                     {
                        _loc2_=I18nKeys.kuw;
                        _loc10_=new AppendingLineBuilder().setDelimiter(" ");
                        _loc10_.pushParams(I18nKeys.kuw,{data:new Nara("+"+_loc4_)});
                        _loc10_.pushParams(StatData.jacypana(_loc3_));
                        _loc9_["data"]=_loc10_;
                        this.wujarof.push(new Effect(_loc2_,_loc9_));
                     }
                     break;
               }
            }
         }
         return;
      }

      private function revoz() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:XML = null;
         var _loc2_:* = true;
         for each (_loc1_ in this.sicacuq.ActivateOnEquip)
         {
            this.wujarof.push(new Effect(I18nKeys.nizekygy,""));
            _loc2_=false;
            if(_loc1_.toString()=="IncrementStat")
            {
               this.wujarof.push(new Effect(I18nKeys.vurino,this.bamur(_loc1_)).setReplacementsColor(this.lifera(_loc1_)));
            }
         }
         return;
      }

      private function bamur(param1:XML) : Object {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = int(param1.@stat);
         var _loc3_:int = int(param1.@amount);
         var _loc4_:String = _loc3_>-1?"+":"";
         return 
            {
               statAmount:_loc4_+String(_loc3_)+" ",
               statName:new Sire().setParams(StatData.jacypana(_loc2_))
            }
         ;
      }

      private function lifera(param1:XML) : uint {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var match:XML = null;
         var otherAmount:int = 0;
         var activateXML:XML = param1;
         var stat:int = int(activateXML.@stat);
         var amount:int = int(activateXML.@amount);
         var textColor:uint = this.fukodut?Fury.quky:Fury.tiheb;
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
            textColor=Fury.gynuha(amount-otherAmount);
         }
         if(amount<0)
         {
            textColor=16711680;
         }
         return textColor;
      }

      private function rododilal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.sicacuq.hasOwnProperty("Treasure")==false)
         {
            this.cacatemeg.push(new Restriction(I18nKeys.jep,11776947,false));
            if((this.sibuhydub)||this.qogewe==Febij.CURRENT_PLAYER)
            {
               this.cacatemeg.push(new Restriction(I18nKeys.ficagados,11776947,false));
            }
            else
            {
               this.cacatemeg.push(new Restriction(I18nKeys.zygev,11776947,false));
            }
         }
         return;
      }

      private function cyc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cacatemeg.push(new Restriction(I18nKeys.geqymomyc,16777215,false));
         return;
      }

      private function wugy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cacatemeg.push(new Restriction(I18nKeys.quqef,11776947,false));
         if((this.sibuhydub)||this.qogewe==Febij.CURRENT_PLAYER)
         {
            this.cacatemeg.push(new Restriction(I18nKeys.mig,16777215,false));
         }
         else
         {
            this.cacatemeg.push(new Restriction(I18nKeys.nijuge,16777215,false));
         }
         return;
      }

      private function guhizyq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cacatemeg.push(new Restriction(I18nKeys.ludob,11776947,false));
         this.cacatemeg.push(new Restriction(I18nKeys.mig,16777215,false));
         return;
      }

      private function gezyfy() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:XML = null;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         this.cacatemeg=new Vector.<Restriction>();
         if((this.sicacuq.hasOwnProperty("VaultItem"))&&(!(this.gomib==-1))&&!(this.gomib==ObjectLibrary.tumu["Vault Chest"]))
         {
            this.cacatemeg.push(new Restriction(I18nKeys.nisymequco,16549442,true));
         }
         if(this.sicacuq.hasOwnProperty("Soulbound"))
         {
            this.cacatemeg.push(new Restriction(I18nKeys.hima,11776947,false));
         }
         if(this.fukodut)
         {
            if(this.sicacuq.hasOwnProperty("Usable"))
            {
               this.cyc();
               this.rododilal();
            }
            else
            {
               if(this.sicacuq.hasOwnProperty("Consumable"))
               {
                  this.wugy();
               }
               else
               {
                  if(this.sicacuq.hasOwnProperty("InvUse"))
                  {
                     this.guhizyq();
                  }
                  else
                  {
                     this.rododilal();
                  }
               }
            }
         }
         else
         {
            if(this.player!=null)
            {
               this.cacatemeg.push(new Restriction(I18nKeys.nivab,16549442,true));
            }
         }
         var _loc1_:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
         if(_loc1_!=null)
         {
            this.cacatemeg.push(new Restriction(I18nKeys.gaheli,11776947,false));
         }
         for each (_loc2_ in this.sicacuq.EquipRequirement)
         {
            _loc3_=ObjectLibrary.mufa(_loc2_,this.player);
            if(_loc2_.toString()=="Stat")
            {
               _loc4_=int(_loc2_.@stat);
               _loc5_=int(_loc2_.@value);
               this.cacatemeg.push(new Restriction("Requires "+StatData.jacypana(_loc4_)+" of "+_loc5_,_loc3_?11776947:16549442,_loc3_?false:true));
            }
         }
         return;
      }

      private function kub() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.line2=new Luvu(cupuzini-12,0);
         addChild(this.line2);
         return;
      }

      private function pane() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.cacatemeg.length!=0)
         {
            this.zoni=new Lufub().setSize(14).setColor(11776947).setTextWidth(cupuzini-4).setIndent(-10).setLeftMargin(10).setWordWrap(true).setHTML(true);
            this.zoni.setStringBuilder(this.lomuqah());
            this.zoni.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
            jiguvovu.push(this.zoni.textChanged);
            addChild(this.zoni);
         }
         return;
      }

      private function lomuqah() : Zirewe {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:Restriction = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         for each (_loc2_ in this.cacatemeg)
         {
            _loc3_=_loc2_.bold_?"<b>":"";
            _loc3_=_loc3_.concat("<font color=\"#"+_loc2_.color_.toString(16)+"\">");
            _loc4_="</font>";
            _loc4_=_loc4_.concat(_loc2_.bold_?"</b>":"");
            _loc5_=this.player?ObjectLibrary.fajocyd[this.player.objectType_]:"";
            _loc1_.pushParams(_loc2_.text_,
               {
                  unUsableClass:_loc5_,
                  usableClasses:this.fyfanuvupa(),
                  keyCode:Kiv.dejicusik[UserConfig.data_.useSpecial]
               }
            ,_loc3_,_loc4_);
         }
         return _loc1_;
      }

      private function fyfanuvupa() : Zirewe {
         var _loc6_:* = false;
         var _loc7_:* = true;
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

      private function subok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cilod=new Lufub().setSize(14).setColor(11776947).setTextWidth(cupuzini).setWordWrap(true);
         this.cilod.setStringBuilder(new Sire().setParams(String(this.sicacuq.Description)));
         this.cilod.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         jiguvovu.push(this.cilod.textChanged);
         addChild(this.cilod);
         return;
      }

      override protected function alignUI() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lupuguryb.x=this.icon.width+4;
         this.lupuguryb.y=this.icon.height/2-this.lupuguryb.height/2;
         if(this.kopakun)
         {
            this.kopakun.y=this.icon.height/2-this.kopakun.height/2;
            this.kopakun.x=cupuzini-30;
         }
         this.cilod.x=4;
         this.cilod.y=this.icon.height+2;
         if(contains(this.line1))
         {
            this.line1.x=8;
            this.line1.y=this.cilod.y+this.cilod.height+8;
            this.lywyjy.x=4;
            this.lywyjy.y=this.line1.y+8;
         }
         else
         {
            this.line1.y=this.cilod.y+this.cilod.height;
            this.lywyjy.y=this.line1.y;
         }
         this.line2.x=8;
         this.line2.y=this.lywyjy.y+this.lywyjy.height+8;
         var _loc1_:uint = this.line2.y+8;
         if(this.zoni)
         {
            this.zoni.x=4;
            this.zoni.y=_loc1_;
            _loc1_=_loc1_+this.zoni.height;
         }
         if(this.baz)
         {
            if(contains(this.baz))
            {
               this.baz.x=4;
               this.baz.y=_loc1_;
            }
         }
         return;
      }

      private function qefigyby() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.curItemXML!=null)
         {
            this.huzihugy=this.pejajadaj.haryhahed(this.sicacuq,this.curItemXML);
         }
         else
         {
            this.huzihugy=new Holamoraq();
         }
         return;
      }
   }

}   import nec.Sire;
   import nec.AppendingLineBuilder;


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
         var _loc5_:Sire = null;
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
               if(this.valueReplacements_[_loc4_] is Sire)
               {
                  _loc5_=this.valueReplacements_[_loc4_] as Sire;
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
