package tycezudyj
{
   import laho.Lezihej;
   import __AS3__.vec.Vector;
   import laho.Bolyroty;
   import sivopa.Naly;
   import kyco.Nun;
   import flash.events.Event;


   public class Wepuli extends Object
   {
      public function Wepuli(param1:Lezihej, param2:Naly, param3:Nun, param4:Class) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.hybosily=param1;
         this.zutylyk=param2;
         this.pub=param3.kuqez();
         this.piha=param4;
         this._factory=new Liriwuce(this.pub);
         return;
      }

      private var hybosily:Lezihej;

      private var qydyd:Vector.<Bolyroty>;

      private var zutylyk:Naly;

      private var pub:Nun;

      private var piha:Class;

      private var _factory:Liriwuce;

      public function execute(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Class = param1["constructor"] as Class;
         if(this.gahe(_loc2_))
         {
            this.godaq(param1,_loc2_);
         }
         return;
      }

      private function gahe(param1:Class) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !this.piha||param1==this.piha;
      }

      private function faloti(param1:Class) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1==Event);
      }

      private function vybyro(param1:Event, param2:Class) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pub.map(Event).cufypy(param1);
         if(this.faloti(param2))
         {
            this.pub.map((this.piha)||(param2)).cufypy(param1);
         }
         return;
      }

      private function talyh(param1:Class) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pub.gukin(Event);
         if(this.faloti(param1))
         {
            this.pub.gukin((this.piha)||(param1));
         }
         return;
      }

      private function godaq(param1:Event, param2:Class) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Object = null;
         var _loc4_:Bolyroty = this.zutylyk.naril;
         while(_loc4_)
         {
            _loc4_.murus();
            this.vybyro(param1,param2);
            _loc3_=this._factory.create(_loc4_);
            this.talyh(param2);
            if(_loc3_)
            {
               this.zegy(_loc4_);
               _loc3_.execute();
            }
            _loc4_=_loc4_.next;
         }
         return;
      }

      private function zegy(param1:Bolyroty) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.tene)
         {
            this.hybosily.qukijyq(param1);
         }
         return;
      }
   }

}