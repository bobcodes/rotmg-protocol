package zycysoj
{
   import poho.Kyhy;
   import poho.Dywygave;
   import poho.Pom;
   import komi.Vibemod;
   import kabam.rotmg.assets.model.Fip;
   import poho.Bul;
   import poho.Wyq;
   import poho.Zupofecad;
   import __AS3__.vec.Vector;


   public class Fabu extends Object
   {
      public function Fabu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:XML;

      public var classes:Kyhy;

      public function execute() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XMLList = this.data.Object;
         for each (_loc2_ in _loc1_)
         {
            this.mucet(_loc2_);
         }
         return;
      }

      private function mucet(param1:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = param1.@type;
         var _loc3_:Dywygave = this.classes.gug(_loc2_);
         this.cygoro(_loc3_,param1);
         return;
      }

      private function cygoro(param1:Dywygave, param2:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:XML = null;
         param1.id=param2.@type;
         param1.name=param2.DisplayId;
         param1.description=param2.Description;
         param1.siv=param2.HitSound;
         param1.sodyrav=param2.DeathSound;
         param1.puhiwu=param2.BloodProb;
         param1.jek=this.tucaza(param2.SlotTypes);
         param1.honike=this.tucaza(param2.Equipment);
         param1.zelybokuc=this.bylome(param2,"MaxHitPoints");
         param1.tofaruki=this.bylome(param2,"MaxMagicPoints");
         param1.attack=this.bylome(param2,"Attack");
         param1.defense=this.bylome(param2,"Defense");
         param1.speed=this.bylome(param2,"Speed");
         param1.dexterity=this.bylome(param2,"Dexterity");
         param1.gunuwiqas=this.bylome(param2,"HpRegen");
         param1.gikijegep=this.bylome(param2,"MpRegen");
         param1.unlockCost=param2.UnlockCost;
         for each (_loc3_ in param2.UnlockLevel)
         {
            param1.johevad.push(this.vatenenyz(_loc3_));
         }
         param1.sybiwu.ruricoke(this.wuqudag(param2),true);
         return;
      }

      private function wuqudag(param1:XML) : Pom {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = param1.AnimatedTexture.File;
         var _loc3_:int = param1.AnimatedTexture.Index;
         var _loc4_:Pom = new Pom();
         _loc4_.id=0;
         _loc4_.name=Vibemod.bida;
         _loc4_.fegotu=new Fip(_loc2_,_loc3_);
         _loc4_.setState(Bul.OWNED);
         _loc4_.gowek(true);
         return _loc4_;
      }

      private function vatenenyz(param1:XML) : Wyq {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Wyq = new Wyq();
         _loc2_.level=param1.@level;
         _loc2_.character=this.classes.gug(param1.@type);
         return _loc2_;
      }

      private function bylome(param1:XML, param2:String) : Zupofecad {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:Zupofecad = null;
         var _loc3_:XML = param1[param2][0];
         for each (_loc5_ in param1.LevelIncrease)
         {
            if(_loc5_.text()==param2)
            {
               _loc4_=_loc5_;
            }
         }
         _loc6_=new Zupofecad();
         _loc6_.herelot=int(_loc3_.toString());
         _loc6_.max=_loc3_.@max;
         _loc6_.kamu=_loc4_?_loc4_.@min:0;
         _loc6_.lure=_loc4_?_loc4_.@max:0;
         return _loc6_;
      }

      private function tucaza(param1:String) : Vector.<int> {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Array = param1.split(",");
         var _loc3_:int = _loc2_.length;
         var _loc4_:Vector.<int> = new Vector.<int>(_loc3_,true);
         var _loc5_:* = 0;
         while(_loc5_<_loc3_)
         {
            _loc4_[_loc5_]=int(_loc2_[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }
   }

}