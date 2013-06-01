package jat
{
[CLASS286]   import tinava.Dab;
   import __AS3__.vec.Vector;
   import qypupet.Vuravipyg;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;


   public class PetPicker extends Sipedoqe implements Gevin
   {
      public function PetPicker() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vekotov=new Zyn();
         super();
         return;
      }

      private static function kicic(param1:Vaz, param2:Vaz) : int {
         var _loc3_:int = param1.getPetVO().wosyjuzed[0].points;
         var _loc4_:int = param2.getPetVO().wosyjuzed[0].points;
         return _loc4_-_loc3_;
      }

      public var livutygok:Tyt;

      public var vekotov:Dab;

      private var qavutyrop:Vector.<Vaz>;

      private var pypi:int;

      public function fyb(param1:Vector.<Vuravipyg>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rovofus(param1);
         this.cetipocam();
         this.sigeci();
         return;
      }

      private function cetipocam() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each (_loc2_ in this.qavutyrop)
         {
            _loc1_.push(_loc2_);
         }
         setItems(_loc1_);
         return;
      }

      private function rovofus(param1:Vector.<Vuravipyg>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Vuravipyg = null;
         this.qavutyrop=new Vector.<Vaz>();
         for each (_loc2_ in param1)
         {
            this.ritynupe(_loc2_);
         }
         this.qavutyrop.sort(kicic);
         return;
      }

      private function sigeci() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qajyru(fyt(),Vaz.vefuqu);
         this.qajyru(nabod(),Vaz.tehivameq);
         this.qajyru(riwif(),Vaz.mewejysa);
         this.qajyru(pevez(),Vaz.fezy);
         return;
      }

      private function qajyru(param1:DisplayObject, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            Vaz(param1).gupocity(param2);
         }
         return;
      }

      public function fatetoky(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pypi=param1;
         return;
      }

      public function zebop() : Vector.<Vaz> {
         return this.qavutyrop;
      }

      public function zujadogym(param1:int) : Vaz {
         return this.qavutyrop[param1];
      }

      public function pec(param1:Vuravipyg) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vuravipyg = null;
         var _loc2_:* = 0;
         while(_loc2_<this.qavutyrop.length)
         {
            _loc3_=this.qavutyrop[_loc2_].getPetVO();
            if(!this.zemodom(param1,_loc3_))
            {
               this.qavutyrop[_loc2_].disable();
            }
            _loc2_++;
         }
         return;
      }

      public function dir(param1:Vuravipyg) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vuravipyg = null;
         var _loc2_:* = 0;
         while(_loc2_<this.qavutyrop.length)
         {
            _loc3_=this.qavutyrop[_loc2_].getPetVO();
            if(_loc3_.lecafis()==param1.lecafis())
            {
               this.qavutyrop[_loc2_].disable();
            }
            _loc2_++;
         }
         return;
      }

      private function zemodom(param1:Vuravipyg, param2:Vuravipyg) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1.qupohysy()==param2.qupohysy()&&param1.nyv()==param2.nyv();
      }

      private function ritynupe(param1:Vuravipyg) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var pet:Waby = null;
         var pet_clickHandler:Function = null;
         var petVO:Vuravipyg = param1;
         pet_clickHandler=new function(param1:MouseEvent):void
         {
            if(pet.isEnabled())
            {
                  vekotov.dispatch(petVO);
            }
            return;
         };
         pet=this.livutygok.create(petVO,this.pypi);
         this.qavutyrop.push(pet);
         pet.addEventListener(MouseEvent.CLICK,pet_clickHandler);
         return;
      }
   }
[/CLASS]
}