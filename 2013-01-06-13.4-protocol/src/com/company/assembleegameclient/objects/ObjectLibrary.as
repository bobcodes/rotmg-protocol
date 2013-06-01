package com.company.assembleegameclient.objects
{
[CLASS577]   import __AS3__.vec.Vector;
   import flash.utils.Dictionary;
   import sakopame.Kykike;
   import flash.utils.getDefinitionByName;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import kuzycyw.Mygisyqoc;
   import kuzycyw.Cymydef;
   import com.company.util.ConversionUtil;
   import jyz.StatData;


   public class ObjectLibrary extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ObjectLibrary() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static var biwuwufaj:Pap = new Pap();

      public static const dyli:String = "lofiObj3";

      public static const kutuha:int = 255;

      public static var vyhytu:Vector.<XML> = new Vector.<XML>();

      public static var sumohiras:Vector.<XML> = new Vector.<XML>();

      public static var vireme:Dictionary = new Dictionary();

      public static const teqot:Dictionary = new Dictionary();

      public static const zedij:Dictionary = new Dictionary();

      public static const ronifyva:Dictionary = new Dictionary();

      public static const mafiwape:Dictionary = new Dictionary();

      public static const kusuj:Dictionary = new Dictionary();

      public static const kyd:Dictionary = new Dictionary();

      public static const gacyb:Dictionary = new Dictionary();

      public static const sivoh:Dictionary = new Dictionary();

      public static const gebyjyri:ObjectProperties = new ObjectProperties(null);

      public static const hitylyvam:Object = {
                                                   CaveWall:CaveWall,
                                                   Character:Character,
                                                   CharacterChanger:CharacterChanger,
                                                   ClosedGiftChest:ClosedGiftChest,
                                                   ClosedVaultChest:ClosedVaultChest,
                                                   ConnectedWall:ConnectedWall,
                                                   Container:Container,
                                                   GameObject:GameObject,
                                                   GuildBoard:GuildBoard,
                                                   GuildChronicle:GuildChronicle,
                                                   GuildHallPortal:GuildHallPortal,
                                                   GuildMerchant:GuildMerchant,
                                                   GuildRegister:GuildRegister,
                                                   Merchant:Merchant,
                                                   MoneyChanger:MoneyChanger,
                                                   NameChanger:NameChanger,
                                                   ReskinVendor:ReskinVendor,
                                                   OneWayContainer:OneWayContainer,
                                                   Player:Player,
                                                   Portal:Portal,
                                                   Projectile:Projectile,
                                                   Sign:Sign,
                                                   SpiderWeb:SpiderWeb,
                                                   Stalagmite:Stalagmite,
                                                   Wall:Wall,
                                                   Pet:Pet,
                                                   PetUpgrader:PetUpgrader,
                                                   YardUpgrader:YardUpgrader
                                                   };

      public static function dyzicy(param1:XML) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         for each (_loc2_ in param1.Object)
         {
            _loc3_=String(_loc2_.@id);
            _loc4_=_loc3_;
            if(_loc2_.hasOwnProperty("DisplayId"))
            {
               _loc4_=_loc2_.DisplayId;
            }
            if(_loc2_.hasOwnProperty("Group"))
            {
               if(_loc2_.Group=="Hexable")
               {
                  sumohiras.push(_loc2_);
               }
            }
            _loc5_=int(_loc2_.@type);
            if((_loc2_.hasOwnProperty("PetBehavior"))||(_loc2_.hasOwnProperty("PetAbility")))
            {
               sivoh[_loc5_]=_loc2_;
            }
            else
            {
               teqot[_loc5_]=new ObjectProperties(_loc2_);
               zedij[_loc5_]=_loc2_;
               ronifyva[_loc3_]=_loc5_;
               mafiwape[_loc5_]=_loc4_;
               if(String(_loc2_.Class)=="Player")
               {
                  vireme[_loc5_]=String(_loc2_.@id).substr(0,2);
                  _loc6_=false;
                  _loc7_=0;
                  while(_loc7_<vyhytu.length)
                  {
                     if(int(vyhytu[_loc7_].@type)==_loc5_)
                     {
                        vyhytu[_loc7_]=_loc2_;
                        _loc6_=true;
                     }
                     _loc7_++;
                  }
                  if(!_loc6_)
                  {
                     vyhytu.push(_loc2_);
                  }
               }
               kusuj[_loc5_]=biwuwufaj.create(_loc2_);
               if(_loc2_.hasOwnProperty("Top"))
               {
                  kyd[_loc5_]=biwuwufaj.create(XML(_loc2_.Top));
               }
               if(_loc2_.hasOwnProperty("Animation"))
               {
                  gacyb[_loc5_]=new Kykike(_loc2_);
               }
            }
         }
         return;
      }

      public static function peboda(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = zedij[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return String(_loc2_.@id);
      }

      public static function poq(param1:String) : ObjectProperties {
         var _loc2_:int = ronifyva[param1];
         return teqot[_loc2_];
      }

      public static function bisera(param1:String) : XML {
         var _loc2_:int = ronifyva[param1];
         return zedij[_loc2_];
      }

      public static function bavokodom(param1:int) : GameObject {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = zedij[param1];
         var _loc3_:String = _loc2_.Class;
         var _loc4_:Class = (hitylyvam[_loc3_])||(bolylo(_loc3_));
         return new _loc4_(_loc2_);
      }

      private static function bolylo(param1:String) : Class {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = "com.company.assembleegameclient.objects."+param1;
         return getDefinitionByName(_loc2_) as Class;
      }

      public static function getTextureFromType(param1:int) : BitmapData {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Qeh = kusuj[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return _loc2_.getTexture();
      }

      public static function getBitmapData(param1:int) : BitmapData {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Qeh = kusuj[param1];
         var _loc3_:BitmapData = _loc2_?_loc2_.getTexture():null;
         if(_loc3_)
         {
            return _loc3_;
         }
         return AssetLibrary.zovy(dyli,kutuha);
      }

      public static function getRedrawnTextureFromType(param1:int, param2:int, param3:Boolean, param4:Boolean=true, param5:Number=5) : BitmapData {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc6_:BitmapData = getBitmapData(param1);
         var _loc7_:Qeh = kusuj[param1];
         var _loc8_:BitmapData = _loc7_?_loc7_.mask_:null;
         if(_loc8_==null)
         {
            return TextureRedrawer.redraw(_loc6_,param2,param3,0,0,param4,param5);
         }
         var _loc9_:XML = zedij[param1];
         var _loc10_:int = _loc9_.hasOwnProperty("Tex1")?int(_loc9_.Tex1):0;
         var _loc11_:int = _loc9_.hasOwnProperty("Tex2")?int(_loc9_.Tex2):0;
         _loc6_=TextureRedrawer.resize(_loc6_,_loc8_,param2,param3,_loc10_,_loc11_,param5);
         _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,0);
         return _loc6_;
      }

      public static function niqazolita(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = zedij[param1];
         if(!_loc2_.hasOwnProperty("Size"))
         {
            return 100;
         }
         return int(_loc2_.Size);
      }

      public static function nefil(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = zedij[param1];
         if(!_loc2_.hasOwnProperty("SlotType"))
         {
            return -1;
         }
         return int(_loc2_.SlotType);
      }

      public static function capakab(param1:int, param2:Player) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(param1==Mygisyqoc.kenyh)
         {
            return false;
         }
         var _loc3_:XML = zedij[param1];
         var _loc4_:int = int(_loc3_.SlotType.toString());
         var _loc5_:uint = 0;
         while(_loc5_<Cymydef.nybe)
         {
            if(param2.panel[_loc5_]==_loc4_)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }

      public static function pafynur(param1:int, param2:Player) : int {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:uint = 0;
         if(param1!=Mygisyqoc.kenyh)
         {
            _loc3_=zedij[param1];
            _loc4_=int(_loc3_.SlotType);
            _loc5_=0;
            while(_loc5_<Cymydef.nybe)
            {
               if(param2.panel[_loc5_]==_loc4_)
               {
                  return _loc5_;
               }
               _loc5_++;
            }
         }
         return -1;
      }

      public static function bitisoju(param1:int, param2:Player) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(param2==null)
         {
            return true;
         }
         var _loc3_:XML = zedij[param1];
         if(_loc3_==null||!_loc3_.hasOwnProperty("SlotType"))
         {
            return false;
         }
         var _loc4_:int = _loc3_.SlotType;
         if(_loc4_==Mygisyqoc.myki||_loc4_==Mygisyqoc.cyzoqa)
         {
            return true;
         }
         var _loc5_:* = 0;
         while(_loc5_<param2.panel.length)
         {
            if(param2.panel[_loc5_]==_loc4_)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }

      public static function nadopo(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = zedij[param1];
         return !(_loc2_==null)&&(_loc2_.hasOwnProperty("Soulbound"));
      }

      public static function usableBy(param1:int) : Vector.<String> {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:XML = null;
         var _loc6_:Vector.<int> = null;
         var _loc7_:* = 0;
         var _loc2_:XML = zedij[param1];
         if(_loc2_==null||!_loc2_.hasOwnProperty("SlotType"))
         {
            return null;
         }
         var _loc3_:int = _loc2_.SlotType;
         if(_loc3_==Mygisyqoc.myki||_loc3_==Mygisyqoc.filom||_loc3_==Mygisyqoc.cyzoqa)
         {
            return null;
         }
         var _loc4_:Vector.<String> = new Vector.<String>();
         loop0:
         for each (_loc5_ in vyhytu)
         {
            _loc6_=ConversionUtil.dapani(_loc5_.SlotTypes);
            _loc7_=0;
            while(_loc7_<_loc6_.length)
            {
               if(_loc6_[_loc7_]==_loc3_)
               {
                  _loc4_.push(mafiwape[int(_loc5_.@type)]);
                  continue loop0;
               }
               _loc7_++;
            }
         }
         return _loc4_;
      }

      public static function zycop(param1:int, param2:Player) : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:XML = null;
         if(param2==null)
         {
            return true;
         }
         var _loc3_:XML = zedij[param1];
         for each (_loc4_ in _loc3_.EquipRequirement)
         {
            if(!rycajy(_loc4_,param2))
            {
               return false;
            }
         }
         return true;
      }

      public static function rycajy(param1:XML, param2:Player) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         if(param1.toString()=="Stat")
         {
            _loc3_=int(param1.@value);
            switch(int(param1.@stat))
            {
               case StatData.bory:
                  return param2.liq>=_loc3_;
                  break;
               case StatData.wyjaci:
                  return param2.naduzab>=_loc3_;
                  break;
               case StatData.mety:
                  return param2.jepe>=_loc3_;
                  break;
               case StatData.wugo:
                  return param2.mihu>=_loc3_;
                  break;
               case StatData.wit:
                  return param2.gas>=_loc3_;
                  break;
               case StatData.fizo:
                  return param2.speed_>=_loc3_;
                  break;
               case StatData.nocabu:
                  return param2.hocuwag>=_loc3_;
                  break;
               case StatData.vepa:
                  return param2.wofariwav>=_loc3_;
                  break;
               case StatData.lowosoqev:
                  return param2.boke>=_loc3_;
                  break;
            }
         }
         return false;
      }

      public static function susozih(param1:int) : XML {
         return sivoh[param1];
      }
   }
[/CLASS]
}