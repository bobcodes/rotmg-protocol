package sybyzowo
{
[CLASS508]   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Semytuqa;
   import com.company.assembleegameclient.map.Vidowaty;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Detys;
   import tinava.Dab;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Budogy extends Menu
   {
      public function Budogy(param1:Vidowaty, param2:Vector.<Player>) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.zag=new Vector.<Semytuqa>();
         super(3552822,16777215);
         this.map_=param1;
         this.tiga=param2.concat();
         this.rydo=new Dab();
         this.wodec();
         this.badireh();
         return;
      }

      private var zag:Vector.<Semytuqa>;

      private var bumub:uint = 4;

      public var map_:Vidowaty;

      public var tiga:Vector.<Player>;

      public var saru:Vaqasor;

      public var luga:Detys;

      public var rydo:Dab;

      private function badireh() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Player = null;
         var _loc2_:Semytuqa = null;
         for each (_loc1_ in this.tiga)
         {
            _loc2_=new Semytuqa(11776947,true,_loc1_);
            _loc2_.x=0;
            _loc2_.y=this.bumub;
            addChild(_loc2_);
            this.zag.push(_loc2_);
            this.bumub=this.bumub+32;
         }
         return;
      }

      private function wodec() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.map_.allowPlayerTeleport_)
         {
            this.saru=new TeleportMenuOption(this.map_.player_);
            this.saru.x=8;
            this.saru.y=8;
            this.saru.addEventListener(MouseEvent.CLICK,this.ruromo);
            addChild(this.saru);
            this.luga=new Detys(150,1842204);
            this.luga.x=6;
            this.luga.y=40;
            addChild(this.luga);
            this.bumub=52;
         }
         return;
      }

      private function ruromo(param1:Event) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Player = null;
         var _loc2_:Player = this.map_.player_;
         var _loc3_:Player = null;
         for each (_loc4_ in this.tiga)
         {
            if(_loc2_.vymevydyt(_loc4_))
            {
               _loc3_=_loc4_;
               break;
            }
         }
         if(_loc3_!=null)
         {
            _loc2_.pawuhopa(_loc3_);
         }
         else
         {
            this.rydo.dispatch();
         }
         remove();
         return;
      }
   }
[/CLASS]
}