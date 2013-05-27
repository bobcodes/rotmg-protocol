package fidymu
{
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;
   import zoroc.Bezuco;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;


   public class PetPicker extends Doraqaca implements Zanewuhy
   {
      public function PetPicker() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hotuwed=new Dapahako();
         super();
         return;
      }

      private static function lyvyfysu(param1:Got, param2:Got) : int {
         var _loc3_:int = param1.getPetVO().voqy[0].points;
         var _loc4_:int = param2.getPetVO().voqy[0].points;
         return _loc4_-_loc3_;
      }

      public var kaqotetuh:Cuwuwod;

      public var hotuwed:Hugyqufyq;

      private var tog:Vector.<Got>;

      private var donego:int;

      public function synota(param1:Vector.<Bezuco>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vaziw(param1);
         this.gide();
         this.bovisuja();
         return;
      }

      private function gide() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each (_loc2_ in this.tog)
         {
            _loc1_.push(_loc2_);
         }
         setItems(_loc1_);
         return;
      }

      private function vaziw(param1:Vector.<Bezuco>) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Bezuco = null;
         this.tog=new Vector.<Got>();
         for each (_loc2_ in param1)
         {
            this.maqaza(_loc2_);
         }
         this.tog.sort(lyvyfysu);
         return;
      }

      private function bovisuja() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wek(syza(),Got.riwu);
         this.wek(dureviq(),Got.fofahukyn);
         this.wek(wumovumam(),Got.zupoqu);
         this.wek(vyj(),Got.sysev);
         return;
      }

      private function wek(param1:DisplayObject, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            Got(param1).zubeg(param2);
         }
         return;
      }

      public function cep(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.donego=param1;
         return;
      }

      public function lofog() : Vector.<Got> {
         return this.tog;
      }

      public function guj(param1:int) : Got {
         return this.tog[param1];
      }

      public function tucyjin(param1:Bezuco) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Bezuco = null;
         var _loc2_:* = 0;
         while(_loc2_<this.tog.length)
         {
            _loc3_=this.tog[_loc2_].getPetVO();
            if(!this.vyzi(param1,_loc3_))
            {
               this.tog[_loc2_].disable();
            }
            _loc2_++;
         }
         return;
      }

      public function numuv(param1:Bezuco) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Bezuco = null;
         var _loc2_:* = 0;
         while(_loc2_<this.tog.length)
         {
            _loc3_=this.tog[_loc2_].getPetVO();
            if(_loc3_.gutod()==param1.gutod())
            {
               this.tog[_loc2_].disable();
            }
            _loc2_++;
         }
         return;
      }

      private function vyzi(param1:Bezuco, param2:Bezuco) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1.vifuzuqyt()==param2.vifuzuqyt()&&param1.morezo()==param2.morezo();
      }

      private function maqaza(param1:Bezuco) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var pet:Lybulihu = null;
         var pet_clickHandler:Function = null;
         var petVO:Bezuco = param1;
         pet_clickHandler=new function(param1:MouseEvent):void
         {
            if(pet.isEnabled())
            {
                  hotuwed.dispatch(petVO);
            }
            return;
         };
         pet=this.kaqotetuh.create(petVO,this.donego);
         this.tog.push(pet);
         pet.addEventListener(MouseEvent.CLICK,pet_clickHandler);
         return;
      }
   }

}