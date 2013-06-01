package zegacymo
{
[CLASS699]   import flash.display.Sprite;
   import sojul.Jekoje;
   import tinava.Dab;
   import pudev.Capitu;
   import qilarag.Boqurot;
   import zehus.Kelapu;
   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.display.DisplayObject;
   import totuhare.Javo;


   public class Raleke extends Sprite implements Jekoje
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Raleke() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.zeguro();
         this.napocys();
         return;
      }

      private static const heh:int = 18;

      private var lagiza:Dab;

      public function get login() : Dab {
         return this.lagiza;
      }

      private var kuwakumih:Dab;

      public function get register() : Dab {
         return this.kuwakumih;
      }

      private var userName:String = "";

      private var tuq:Boolean;

      private var lejadu:Capitu;

      private var fefus:Boqurot;

      private var pikynege:Boqurot;

      private function zeguro() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ceqafon();
         this.tah();
         this.nevybysu();
         return;
      }

      private function napocys() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lagiza=new Kelapu(this.pikynege,MouseEvent.CLICK);
         this.kuwakumih=new Kelapu(this.fefus,MouseEvent.CLICK);
         return;
      }

      private function ceqafon() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lejadu=this.vawa();
         this.lejadu.setStringBuilder(new Zufi().setParams(Kefyfa.noqymet));
         return;
      }

      private function vawa() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu();
         _loc1_.setAutoSize(TextFieldAutoSize.RIGHT);
         _loc1_.setSize(heh).setColor(11776947);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         return _loc1_;
      }

      private function tah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pikynege=new Boqurot(Kefyfa.vamevofow,heh,false);
         this.pikynege.setAutoSize(TextFieldAutoSize.RIGHT);
         return;
      }

      private function nevybysu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fefus=new Boqurot(Kefyfa.dyqefe,heh,false);
         this.fefus.setAutoSize(TextFieldAutoSize.RIGHT);
         return;
      }

      private function lesug() : DisplayObject {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu();
         _loc1_.setColor(11776947).setAutoSize(TextFieldAutoSize.RIGHT).setSize(heh);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         _loc1_.setStringBuilder(new Javo(" - "));
         return _loc1_;
      }

      public function rewe(param1:String, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
            this.wabajegez();
         }
         else
         {
            this.byba();
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

      private function wabajegez() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lejadu.setStringBuilder(new Zufi().setParams(Kefyfa.bucuzyb,{userName:this.userName}));
         this.pikynege.newotikeh(Kefyfa.ludyhat);
         this.pakarybe(this.lejadu,this.pikynege);
         return;
      }

      private function byba() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lejadu.setStringBuilder(new Zufi().setParams(Kefyfa.noqymet,{userName:this.userName}));
         this.pikynege.newotikeh(Kefyfa.vamevofow);
         this.pakarybe(this.lejadu,this.lesug(),this.fefus,this.lesug(),this.pikynege);
         return;
      }

      private function pakarybe(... rest) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:DisplayObject = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:DisplayObject = null;
         for each (_loc2_ in rest)
         {
            addChild(_loc2_);
         }
         _loc3_=0;
         _loc4_=rest.length;
         while(_loc4_--)
         {
            _loc5_=rest[_loc4_];
            _loc5_.x=_loc3_;
            _loc3_=_loc3_-_loc5_.width;
         }
         return;
      }
   }
[/CLASS]
}