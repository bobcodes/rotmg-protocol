package vinirudel
{
[CLASS1045]   import flash.utils.Timer;
   import zehus.Caje;
   import tinava.Dab;
   import flash.events.TimerEvent;


   public class Zufu extends Object
   {
      public function Zufu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.update=new Dab(int);
         this.available=true;
         return;
      }

      public var objectId:uint;

      private var lizumipe:Array;

      private var hehin:uint;

      public var sahuhov:uint;

      public var vico:int;

      public var position:int;

      public var available:Boolean;

      private var codoqaty:int;

      private var caj:Timer;

      private var bymof:Caje;

      private var wezuvofo:Timer;

      private var zafifofem:Caje;

      public var update:Dab;

      public function set qysyfycug(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lizumipe=param1;
         if(!(param1==null)&&param1.length>0)
         {
            this.codoqaty=0;
         }
         return;
      }

      public function get qysyfycug() : Array {
         return this.lizumipe;
      }

      public function set tular(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hehin=param1;
         this.caj=new Timer(param1,0);
         this.bymof=new Caje(this.caj,TimerEvent.TIMER,TimerEvent);
         this.bymof.add(this.tuzoze);
         return;
      }

      public function set qydehonu(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sahuhov=param1;
         this.wezuvofo=new Timer(param1,0);
         this.zafifofem=new Caje(this.wezuvofo,TimerEvent.TIMER,TimerEvent);
         this.zafifofem.add(this.moc);
         return;
      }

      public function kawop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.available)
         {
            this.caj.reset();
            this.caj.start();
            this.wezuvofo.reset();
            this.wezuvofo.start();
            this.available=false;
            this.codoqaty=this.codoqaty+(this.codoqaty>this.qysyfycug.length-1?0:1);
            this.update.dispatch(this.position);
         }
         return;
      }

      private function moc(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.codoqaty==0)
         {
            this.wezuvofo.stop();
         }
         this.available=true;
         this.update.dispatch(this.position);
         return;
      }

      private function tuzoze(param1:TimerEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.codoqaty--;
         if(this.codoqaty==0)
         {
            this.caj.stop();
         }
         this.update.dispatch(this.position);
         return;
      }

      public function vuj(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         if(param1<=0)
         {
            _loc2_=this.qysyfycug[this.codoqaty];
         }
         return _loc2_;
      }
   }
[/CLASS]
}