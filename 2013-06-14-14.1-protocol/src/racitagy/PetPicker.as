package racitagy
{
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;
   import fanij.Cun;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;


   public class PetPicker extends Vawuhos implements Wecofete
   {
      public function PetPicker() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.valit=new Jybihikib();
         super();
         return;
      }

      private static function cazeliry(param1:Gecibo, param2:Gecibo) : int {
         var _loc3_:int = param1.getPetVO().supufo[0].points;
         var _loc4_:int = param2.getPetVO().supufo[0].points;
         return _loc4_-_loc3_;
      }

      public var resemuci:Tehiv;

      public var valit:Qanyduk;

      private var becoz:Vector.<Gecibo>;

      private var jusazo:int;

      public function qebe(param1:Vector.<Cun>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kunoqowyj(param1);
         this.cydy();
         this.camef();
         return;
      }

      private function cydy() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each (_loc2_ in this.becoz)
         {
            _loc1_.push(_loc2_);
         }
         setItems(_loc1_);
         return;
      }

      private function kunoqowyj(param1:Vector.<Cun>) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Cun = null;
         this.becoz=new Vector.<Gecibo>();
         for each (_loc2_ in param1)
         {
            this.caj(_loc2_);
         }
         this.becoz.sort(cazeliry);
         return;
      }

      private function camef() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qejil(vogad(),Gecibo.lamomuf);
         this.qejil(kacyd(),Gecibo.vuzoqywi);
         this.qejil(dehivun(),Gecibo.nawycywyh);
         this.qejil(vebyremon(),Gecibo.kora);
         return;
      }

      private function qejil(param1:DisplayObject, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            Gecibo(param1).qojedyna(param2);
         }
         return;
      }

      public function geva(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jusazo=param1;
         return;
      }

      public function zocedijiq() : Vector.<Gecibo> {
         return this.becoz;
      }

      public function vahunufi(param1:int) : Gecibo {
         return this.becoz[param1];
      }

      public function kybi(param1:Cun) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Cun = null;
         var _loc2_:* = 0;
         while(_loc2_<this.becoz.length)
         {
            _loc3_=this.becoz[_loc2_].getPetVO();
            if(!this.boriteves(param1,_loc3_))
            {
               this.becoz[_loc2_].disable();
            }
            _loc2_++;
         }
         return;
      }

      public function tased(param1:Cun) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Cun = null;
         var _loc2_:* = 0;
         while(_loc2_<this.becoz.length)
         {
            _loc3_=this.becoz[_loc2_].getPetVO();
            if(_loc3_.lepuve()==param1.lepuve())
            {
               this.becoz[_loc2_].disable();
            }
            _loc2_++;
         }
         return;
      }

      private function boriteves(param1:Cun, param2:Cun) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1.piju()==param2.piju()&&param1.laj()==param2.laj();
      }

      private function caj(param1:Cun) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var pet:Kes = null;
         var pet_clickHandler:Function = null;
         var petVO:Cun = param1;
         pet_clickHandler=new function(param1:MouseEvent):void
         {
            if(pet.isEnabled())
            {
                  valit.dispatch(petVO);
            }
            return;
         };
         pet=this.resemuci.create(petVO,this.jusazo);
         this.becoz.push(pet);
         pet.addEventListener(MouseEvent.CLICK,pet_clickHandler);
         return;
      }
   }

}