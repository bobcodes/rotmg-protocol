package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import flash.utils.Dictionary;
   import ledegasy.Hiq;
   import flash.utils.getDefinitionByName;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import pirus.Vimaz;
   import pirus.Lekakyry;
   import com.company.util.ConversionUtil;
   import cypujavop.StatData;


   public class ObjectLibrary extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ObjectLibrary() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static var jiladony:Wyp = new Wyp();

      public static const sed:String = "lofiObj3";

      public static const vuvahy:int = 255;

      public static var supy:Vector.<XML> = new Vector.<XML>();

      public static var fekeqos:Vector.<XML> = new Vector.<XML>();

      public static var mohos:Dictionary = new Dictionary();

      public static const lego:Dictionary = new Dictionary();

      public static const tem:Dictionary = new Dictionary();

      public static const tumu:Dictionary = new Dictionary();

      public static const fajocyd:Dictionary = new Dictionary();

      public static const wotoga:Dictionary = new Dictionary();

      public static const pupeheb:Dictionary = new Dictionary();

      public static const nucyto:Dictionary = new Dictionary();

      public static const vigelusah:Dictionary = new Dictionary();

      public static const taqobilug:ObjectProperties = new ObjectProperties(null);

      public static const zejukahyc:Object = {
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

      public static function vyce(param1:XML) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
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
                  fekeqos.push(_loc2_);
               }
            }
            _loc5_=int(_loc2_.@type);
            if((_loc2_.hasOwnProperty("PetBehavior"))||(_loc2_.hasOwnProperty("PetAbility")))
            {
               vigelusah[_loc5_]=_loc2_;
            }
            else
            {
               lego[_loc5_]=new ObjectProperties(_loc2_);
               tem[_loc5_]=_loc2_;
               tumu[_loc3_]=_loc5_;
               fajocyd[_loc5_]=_loc4_;
               if(String(_loc2_.Class)=="Player")
               {
                  mohos[_loc5_]=String(_loc2_.@id).substr(0,2);
                  _loc6_=false;
                  _loc7_=0;
                  while(_loc7_<supy.length)
                  {
                     if(int(supy[_loc7_].@type)==_loc5_)
                     {
                        supy[_loc7_]=_loc2_;
                        _loc6_=true;
                     }
                     _loc7_++;
                  }
                  if(!_loc6_)
                  {
                     supy.push(_loc2_);
                  }
               }
               wotoga[_loc5_]=jiladony.create(_loc2_);
               if(_loc2_.hasOwnProperty("Top"))
               {
                  pupeheb[_loc5_]=jiladony.create(XML(_loc2_.Top));
               }
               if(_loc2_.hasOwnProperty("Animation"))
               {
                  nucyto[_loc5_]=new Hiq(_loc2_);
               }
            }
         }
         return;
      }

      public static function pelek(param1:int) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = tem[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return String(_loc2_.@id);
      }

      public static function gygeqaguc(param1:String) : ObjectProperties {
         var _loc2_:int = tumu[param1];
         return lego[_loc2_];
      }

      public static function faviqykef(param1:String) : XML {
         var _loc2_:int = tumu[param1];
         return tem[_loc2_];
      }

      public static function ruqihu(param1:int) : GameObject {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = tem[param1];
         var _loc3_:String = _loc2_.Class;
         var _loc4_:Class = (zejukahyc[_loc3_])||(cef(_loc3_));
         return new _loc4_(_loc2_);
      }

      private static function cef(param1:String) : Class {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = "com.company.assembleegameclient.objects."+param1;
         return getDefinitionByName(_loc2_) as Class;
      }

      public static function getTextureFromType(param1:int) : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sirador = wotoga[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return _loc2_.getTexture();
      }

      public static function getBitmapData(param1:int) : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sirador = wotoga[param1];
         var _loc3_:BitmapData = _loc2_?_loc2_.getTexture():null;
         if(_loc3_)
         {
            return _loc3_;
         }
         return AssetLibrary.jeqycu(sed,vuvahy);
      }

      public static function getRedrawnTextureFromType(param1:int, param2:int, param3:Boolean, param4:Boolean=true, param5:Number=5) : BitmapData {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc6_:BitmapData = getBitmapData(param1);
         var _loc7_:Sirador = wotoga[param1];
         var _loc8_:BitmapData = _loc7_?_loc7_.mask_:null;
         if(_loc8_==null)
         {
            return TextureRedrawer.redraw(_loc6_,param2,param3,0,0,param4,param5);
         }
         var _loc9_:XML = tem[param1];
         var _loc10_:int = _loc9_.hasOwnProperty("Tex1")?int(_loc9_.Tex1):0;
         var _loc11_:int = _loc9_.hasOwnProperty("Tex2")?int(_loc9_.Tex2):0;
         _loc6_=TextureRedrawer.resize(_loc6_,_loc8_,param2,param3,_loc10_,_loc11_,param5);
         _loc6_=TextureRedrawer.outlineGlow(_loc6_,0,0);
         return _loc6_;
      }

      public static function lukol(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = tem[param1];
         if(!_loc2_.hasOwnProperty("Size"))
         {
            return 100;
         }
         return int(_loc2_.Size);
      }

      public static function bohe(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = tem[param1];
         if(!_loc2_.hasOwnProperty("SlotType"))
         {
            return -1;
         }
         return int(_loc2_.SlotType);
      }

      public static function vifetilu(param1:int, param2:Player) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(param1==Vimaz.sufybefyr)
         {
            return false;
         }
         var _loc3_:XML = tem[param1];
         var _loc4_:int = int(_loc3_.SlotType.toString());
         var _loc5_:uint = 0;
         while(_loc5_<Lekakyry.bibole)
         {
            if(param2.nigy[_loc5_]==_loc4_)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }

      public static function moqofulo(param1:int, param2:Player) : int {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:uint = 0;
         if(param1!=Vimaz.sufybefyr)
         {
            _loc3_=tem[param1];
            _loc4_=int(_loc3_.SlotType);
            _loc5_=0;
            while(_loc5_<Lekakyry.bibole)
            {
               if(param2.nigy[_loc5_]==_loc4_)
               {
                  return _loc5_;
               }
               _loc5_++;
            }
         }
         return -1;
      }

      public static function pinuwovac(param1:int, param2:Player) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(param2==null)
         {
            return true;
         }
         var _loc3_:XML = tem[param1];
         if(_loc3_==null||!_loc3_.hasOwnProperty("SlotType"))
         {
            return false;
         }
         var _loc4_:int = _loc3_.SlotType;
         if(_loc4_==Vimaz.bejytypy||_loc4_==Vimaz.jejy)
         {
            return true;
         }
         var _loc5_:* = 0;
         while(_loc5_<param2.nigy.length)
         {
            if(param2.nigy[_loc5_]==_loc4_)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }

      public static function wucosiq(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = tem[param1];
         return !(_loc2_==null)&&(_loc2_.hasOwnProperty("Soulbound"));
      }

      public static function usableBy(param1:int) : Vector.<String> {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:XML = null;
         var _loc6_:Vector.<int> = null;
         var _loc7_:* = 0;
         var _loc2_:XML = tem[param1];
         if(_loc2_==null||!_loc2_.hasOwnProperty("SlotType"))
         {
            return null;
         }
         var _loc3_:int = _loc2_.SlotType;
         if(_loc3_==Vimaz.bejytypy||_loc3_==Vimaz.wyqofe||_loc3_==Vimaz.jejy)
         {
            return null;
         }
         var _loc4_:Vector.<String> = new Vector.<String>();
         loop0:
         for each (_loc5_ in supy)
         {
            _loc6_=ConversionUtil.pasywe(_loc5_.SlotTypes);
            _loc7_=0;
            while(_loc7_<_loc6_.length)
            {
               if(_loc6_[_loc7_]==_loc3_)
               {
                  _loc4_.push(fajocyd[int(_loc5_.@type)]);
                  continue loop0;
               }
               _loc7_++;
            }
         }
         return _loc4_;
      }

      public static function zatopijit(param1:int, param2:Player) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:XML = null;
         if(param2==null)
         {
            return true;
         }
         var _loc3_:XML = tem[param1];
         for each (_loc4_ in _loc3_.EquipRequirement)
         {
            if(!mufa(_loc4_,param2))
            {
               return false;
            }
         }
         return true;
      }

      public static function mufa(param1:XML, param2:Player) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         if(param1.toString()=="Stat")
         {
            _loc3_=int(param1.@value);
            switch(int(param1.@stat))
            {
               case StatData.zotijo:
                  return param2.ruguj>=_loc3_;
                  break;
               case StatData.kakuboho:
                  return param2.boliqoka>=_loc3_;
                  break;
               case StatData.nipilera:
                  return param2.komolevy>=_loc3_;
                  break;
               case StatData.tyq:
                  return param2.vybe>=_loc3_;
                  break;
               case StatData.jizusom:
                  return param2.giwiw>=_loc3_;
                  break;
               case StatData.myw:
                  return param2.speed_>=_loc3_;
                  break;
               case StatData.jatafudu:
                  return param2.vykun>=_loc3_;
                  break;
               case StatData.qubapedy:
                  return param2.pazawo>=_loc3_;
                  break;
               case StatData.joj:
                  return param2.zegikefa>=_loc3_;
                  break;
            }
         }
         return false;
      }

      public static function quq(param1:int) : XML {
         return vigelusah[param1];
      }
   }

}