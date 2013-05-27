package zoroc
{
   import pujo.Toqaqeg;
   import hotewa.Baqifa;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Wuwa;
   import com.company.assembleegameclient.map.Map;


   public class Gecezyw extends Object
   {
      public function Gecezyw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hash={};
         this.pets=new Vector.<Bezuco>();
         super();
         return;
      }

      public var zype:Toqaqeg;

      public var muwi:Baqifa;

      private var hash:Object;

      private var pets:Vector.<Bezuco>;

      private var zeku:XML;

      private var type:int;

      private var lolicafu:Bezuco;

      public function getPetVO(param1:int) : Bezuco {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bezuco = null;
         if(this.hash[param1]!=null)
         {
            return this.hash[param1];
         }
         _loc2_=new Bezuco(param1);
         this.pets.push(_loc2_);
         this.hash[param1]=_loc2_;
         return _loc2_;
      }

      public function hygufisu(param1:int) : Bezuco {
         return this.hash[param1];
      }

      public function zeqi() : Vector.<Bezuco> {
         return this.pets;
      }

      public function maqaza(param1:Bezuco) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pets.push(param1);
         return;
      }

      public function qoqycofy(param1:Bezuco) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.lolicafu=param1;
         var _loc2_:SavedCharacter = this.muwi.qamas(this.muwi.pyt);
         if(_loc2_)
         {
            _loc2_.sif(this.lolicafu);
         }
         this.zype.dispatch();
         return;
      }

      public function rizidakuv() : Bezuco {
         return this.lolicafu;
      }

      public function tovigyta() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:SavedCharacter = this.muwi.qamas(this.muwi.pyt);
         if(_loc1_)
         {
            _loc1_.sif(null);
         }
         this.lolicafu=null;
         this.zype.dispatch();
         return;
      }

      public function guj(param1:int) : Bezuco {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.nubuqusew(param1);
         if(_loc2_==-1)
         {
            return null;
         }
         return this.pets[_loc2_];
      }

      private function nubuqusew(param1:int) : int {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Bezuco = null;
         var _loc3_:uint = 0;
         while(_loc3_<this.pets.length)
         {
            _loc2_=this.pets[_loc3_];
            if(_loc2_.gutod()==param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }

      public function mujebeg(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.type=param1;
         this.zeku=ObjectLibrary.faviqykef(ObjectLibrary.pelek(param1));
         return;
      }

      public function fiz() : uint {
         return Fywisiku.tawyt(this.zeku.@id).rarity.wusibaw;
      }

      public function liqas() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.zeku?Fywisiku.tawyt(this.zeku.@id).wusibaw:1;
      }

      public function ryke() : int {
         return int(this.zeku.Fame);
      }

      public function lijamokuf() : int {
         return int(this.zeku.Price);
      }

      public function seqev() : int {
         return this.type;
      }

      public function quciqypoz(param1:Wuwa) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(param1.name_)
         {
            case Map.PET_YARD_1:
            case Map.PET_YARD_2:
            case Map.PET_YARD_3:
            case Map.PET_YARD_4:
            case Map.PET_YARD_5:
               return true;
            default:
               return false;
         }
      }

      public function daqoveq(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pets.splice(this.nubuqusew(param1),1);
         return;
      }

      public function hufezyv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hash={};
         this.pets=new Vector.<Bezuco>();
         this.tovigyta();
         return;
      }
   }

}