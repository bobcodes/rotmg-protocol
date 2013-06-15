package micac
{
   import flash.utils.Timer;
   import qykifavol.Hydydyqas;
   import mukyrosu.Qanyduk;
   import flash.events.TimerEvent;


   public class Cake extends Object
   {
      public function Cake() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.update=new Qanyduk(int);
         this.available=true;
         return;
      }

      public var objectId:uint;

      private var wiryq:Array;

      private var fahysyp:uint;

      public var beni:uint;

      public var fukuk:int;

      public var position:int;

      public var available:Boolean;

      private var zohafu:int;

      private var qyza:Timer;

      private var fas:Hydydyqas;

      private var lat:Timer;

      private var kejyba:Hydydyqas;

      public var update:Qanyduk;

      public function set jidyfale(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wiryq=param1;
         if(!(param1==null)&&param1.length>0)
         {
            this.zohafu=0;
         }
         return;
      }

      public function get jidyfale() : Array {
         return this.wiryq;
      }

      public function set vezaqad(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fahysyp=param1;
         this.qyza=new Timer(param1,0);
         this.fas=new Hydydyqas(this.qyza,TimerEvent.TIMER,TimerEvent);
         this.fas.add(this.jop);
         return;
      }

      public function set koninu(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.beni=param1;
         this.lat=new Timer(param1,0);
         this.kejyba=new Hydydyqas(this.lat,TimerEvent.TIMER,TimerEvent);
         this.kejyba.add(this.bag);
         return;
      }

      public function gisu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.available)
         {
            this.qyza.reset();
            this.qyza.start();
            this.lat.reset();
            this.lat.start();
            this.available=false;
            this.zohafu=this.zohafu+(this.zohafu>this.jidyfale.length-1?0:1);
            this.update.dispatch(this.position);
         }
         return;
      }

      private function bag(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.zohafu==0)
         {
            this.lat.stop();
         }
         this.available=true;
         this.update.dispatch(this.position);
         return;
      }

      private function jop(param1:TimerEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.zohafu--;
         if(this.zohafu==0)
         {
            this.qyza.stop();
         }
         this.update.dispatch(this.position);
         return;
      }

      public function nimosuzod(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         if(param1<=0)
         {
            _loc2_=this.jidyfale[this.zohafu];
         }
         return _loc2_;
      }
   }

}