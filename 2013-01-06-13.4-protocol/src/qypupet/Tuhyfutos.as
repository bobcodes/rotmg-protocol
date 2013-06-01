package qypupet
{
[CLASS300]   import bocak.Wuqez;
   import dylaqezo.Vusun;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vidowaty;
   import com.company.assembleegameclient.map.Map;


   public class Tuhyfutos extends Object
   {
      public function Tuhyfutos() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hash={};
         this.pets=new Vector.<Vuravipyg>();
         super();
         return;
      }

      public var lytydohod:Wuqez;

      public var jojun:Vusun;

      private var hash:Object;

      private var pets:Vector.<Vuravipyg>;

      private var nibaka:XML;

      private var type:int;

      private var vaky:Vuravipyg;

      public function getPetVO(param1:int) : Vuravipyg {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vuravipyg = null;
         if(this.hash[param1]!=null)
         {
            return this.hash[param1];
         }
         _loc2_=new Vuravipyg(param1);
         this.pets.push(_loc2_);
         this.hash[param1]=_loc2_;
         return _loc2_;
      }

      public function jadaj(param1:int) : Vuravipyg {
         return this.hash[param1];
      }

      public function qunageg() : Vector.<Vuravipyg> {
         return this.pets;
      }

      public function ritynupe(param1:Vuravipyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pets.push(param1);
         return;
      }

      public function wuq(param1:Vuravipyg) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vaky=param1;
         var _loc2_:SavedCharacter = this.jojun.syci(this.jojun.zud);
         if(_loc2_)
         {
            _loc2_.rofuqa(this.vaky);
         }
         this.lytydohod.dispatch();
         return;
      }

      public function kodu() : Vuravipyg {
         return this.vaky;
      }

      public function gul() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:SavedCharacter = this.jojun.syci(this.jojun.zud);
         if(_loc1_)
         {
            _loc1_.rofuqa(null);
         }
         this.vaky=null;
         this.lytydohod.dispatch();
         return;
      }

      public function zujadogym(param1:int) : Vuravipyg {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.cydo(param1);
         if(_loc2_==-1)
         {
            return null;
         }
         return this.pets[_loc2_];
      }

      private function cydo(param1:int) : int {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Vuravipyg = null;
         var _loc3_:uint = 0;
         while(_loc3_<this.pets.length)
         {
            _loc2_=this.pets[_loc3_];
            if(_loc2_.lecafis()==param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }

      public function ryhis(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.type=param1;
         this.nibaka=ObjectLibrary.bisera(ObjectLibrary.peboda(param1));
         return;
      }

      public function wofuzuzu() : uint {
         return Dafuhu.gak(this.nibaka.@id).rarity.dafeweqif;
      }

      public function cumyma() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.nibaka?Dafuhu.gak(this.nibaka.@id).dafeweqif:1;
      }

      public function qijegawan() : int {
         return int(this.nibaka.Fame);
      }

      public function cyko() : int {
         return int(this.nibaka.Price);
      }

      public function pybatah() : int {
         return this.type;
      }

      public function pagavy(param1:Vidowaty) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
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

      public function cibudy(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pets.splice(this.cydo(param1),1);
         return;
      }

      public function cidutiwes() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hash={};
         this.pets=new Vector.<Vuravipyg>();
         this.gul();
         return;
      }
   }
[/CLASS]
}