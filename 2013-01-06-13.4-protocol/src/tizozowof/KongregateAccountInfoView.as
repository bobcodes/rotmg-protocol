package tizozowof
{
[CLASS758]   import flash.display.Sprite;
   import sojul.Jekoje;
   import haqakel.Kefyfa;
   import zehus.Kelapu;
   import pudev.Capitu;
   import qilarag.Boqurot;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.events.MouseEvent;
   import tinava.Dab;
   import totuhare.Zufi;
   import flash.display.DisplayObject;


   public class KongregateAccountInfoView extends Sprite implements Jekoje
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function KongregateAccountInfoView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.ceqafon();
         this.cuhu();
         return;
      }

      private static const dyqefe:String = Kefyfa.bubedopoc;

      private static const heh:int = 18;

      private var kuwakumih:Kelapu;

      private var lejadu:Capitu;

      private var fefus:Boqurot;

      private var userName:String = "";

      private var tuq:Boolean;

      private function ceqafon() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lejadu=new Capitu().setSize(heh).setColor(11776947);
         this.lejadu.setAutoSize(TextFieldAutoSize.RIGHT);
         this.lejadu.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.lejadu);
         return;
      }

      private function cuhu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fefus=new Boqurot(dyqefe,heh,false);
         this.fefus.setAutoSize(TextFieldAutoSize.RIGHT);
         this.kuwakumih=new Kelapu(this.fefus,MouseEvent.CLICK);
         return;
      }

      public function rewe(param1:String, param2:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.userName=param1;
         this.tuq=param2;
         this.nepalacu();
         return;
      }

      private function nepalacu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.niqyfawu();
         if(this.tuq)
         {
            this.depywu();
         }
         else
         {
            this.baz();
         }
         return;
      }

      private function niqyfawu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         while(numChildren)
         {
            removeChildAt(0);
         }
         return;
      }

      public function get register() : Dab {
         return this.kuwakumih;
      }

      private function depywu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lejadu.setStringBuilder(new Zufi().setParams(Kefyfa.puqun,{userName:this.userName}));
         this.fywukiqel(this.lejadu);
         return;
      }

      private function baz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lejadu.setStringBuilder(new Zufi().setParams(Kefyfa.vurem));
         this.fywukiqel(this.lejadu,this.fefus);
         this.lejadu.x=this.fefus.getBounds(this).left;
         return;
      }

      private function fywukiqel(... rest) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:DisplayObject = null;
         var _loc2_:int = rest.length;
         while(_loc2_--)
         {
            _loc3_=rest[_loc2_];
            addChild(_loc3_);
         }
         return;
      }
   }
[/CLASS]
}