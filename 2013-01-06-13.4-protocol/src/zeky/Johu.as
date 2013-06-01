package zeky
{
[CLASS93]   import tehakab.Supuvygac;
   import tehakab.Cusifyha;
   import tehakab.Copaqufiv;
   import haqakel.Kefyfa;
   import kabam.rotmg.assets.model.Kybepujyf;
   import tehakab.Dur;
   import tehakab.Kana;
   import tehakab.Halon;
   import __AS3__.vec.Vector;


   public class Johu extends Object
   {
      public function Johu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:XML;

      public var classes:Supuvygac;

      public function execute() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         var _loc1_:XMLList = this.data.Object;
         for each (_loc2_ in _loc1_)
         {
            this.kiwiq(_loc2_);
         }
         return;
      }

      private function kiwiq(param1:XML) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:int = param1.@type;
         var _loc3_:Cusifyha = this.classes.waqy(_loc2_);
         this.wyk(_loc3_,param1);
         return;
      }

      private function wyk(param1:Cusifyha, param2:XML) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         param1.id=param2.@type;
         param1.name=param2.DisplayId;
         param1.description=param2.Description;
         param1.wujijyp=param2.HitSound;
         param1.buhofo=param2.DeathSound;
         param1.wihi=param2.BloodProb;
         param1.gakiz=this.cafihu(param2.SlotTypes);
         param1.hyq=this.cafihu(param2.Equipment);
         param1.cavy=this.tiqepi(param2,"MaxHitPoints");
         param1.pulyw=this.tiqepi(param2,"MaxMagicPoints");
         param1.attack=this.tiqepi(param2,"Attack");
         param1.defense=this.tiqepi(param2,"Defense");
         param1.speed=this.tiqepi(param2,"Speed");
         param1.dexterity=this.tiqepi(param2,"Dexterity");
         param1.mocesunam=this.tiqepi(param2,"HpRegen");
         param1.zoso=this.tiqepi(param2,"MpRegen");
         param1.unlockCost=param2.UnlockCost;
         for each (_loc3_ in param2.UnlockLevel)
         {
            param1.nalyzig.push(this.cycuv(_loc3_));
         }
         param1.pikyremo.nutehe(this.ridobu(param2),true);
         return;
      }

      private function ridobu(param1:XML) : Copaqufiv {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = param1.AnimatedTexture.File;
         var _loc3_:int = param1.AnimatedTexture.Index;
         var _loc4_:Copaqufiv = new Copaqufiv();
         _loc4_.id=0;
         _loc4_.name=Kefyfa.darekakyf;
         _loc4_.jaqyb=new Kybepujyf(_loc2_,_loc3_);
         _loc4_.setState(Dur.OWNED);
         _loc4_.ryb(true);
         return _loc4_;
      }

      private function cycuv(param1:XML) : Kana {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kana = new Kana();
         _loc2_.level=param1.@level;
         _loc2_.character=this.classes.waqy(param1.@type);
         return _loc2_;
      }

      private function tiqepi(param1:XML, param2:String) : Halon {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:Halon = null;
         var _loc3_:XML = param1[param2][0];
         for each (_loc5_ in param1.LevelIncrease)
         {
            if(_loc5_.text()==param2)
            {
               _loc4_=_loc5_;
            }
         }
         _loc6_=new Halon();
         _loc6_.cygah=int(_loc3_.toString());
         _loc6_.max=_loc3_.@max;
         _loc6_.sawiqoci=_loc4_?_loc4_.@min:0;
         _loc6_.zelymeref=_loc4_?_loc4_.@max:0;
         return _loc6_;
      }

      private function cafihu(param1:String) : Vector.<int> {
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
[/CLASS]
}