package kyre
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import flash.display.Graphics;
   import flash.events.MouseEvent;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.util.GuildUtil;
   import nas.Dialog;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import jag.Giq;
   import wegyluke.Hez;
   import flash.events.Event;
   import wegyluke.Cowymute;
   import nec.Nara;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import com.company.rotmg.graphics.DeleteXGraphic;


   class Syhu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Syhu(param1:int, param2:String, param3:int, param4:int, param5:Boolean, param6:int) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:uint = 0;
         super();
         this.name_=param2;
         this.nefecuqo=param3;
         _loc7_=11776947;
         if(param5)
         {
            _loc7_=16564761;
         }
         this.penerylyw=new Lufub().setSize(22).setColor(_loc7_);
         this.penerylyw.setStringBuilder(new Nara(param1.toString()+"."));
         this.penerylyw.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.penerylyw.x=60-this.penerylyw.width;
         this.penerylyw.y=4;
         addChild(this.penerylyw);
         this.nameText_=new Lufub().setSize(22).setColor(_loc7_);
         this.nameText_.setStringBuilder(new Nara(param2));
         this.nameText_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.nameText_.x=100;
         this.nameText_.y=4;
         addChild(this.nameText_);
         this.cowuqoge=new Lufub().setSize(22).setColor(_loc7_);
         this.cowuqoge.setAutoSize(TextFieldAutoSize.RIGHT);
         this.cowuqoge.setStringBuilder(new Nara(param4.toString()));
         this.cowuqoge.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.cowuqoge.x=408;
         this.cowuqoge.y=4;
         addChild(this.cowuqoge);
         this.qiburat=new Bitmap(GuildUtil.vemitijim(40));
         this.qiburat.x=400;
         this.qiburat.y=HEIGHT/2-this.qiburat.height/2;
         addChild(this.qiburat);
         this.qyrem=new Bitmap(GuildUtil.ditedabyj(param3,20));
         this.qyrem.x=548;
         this.qyrem.y=HEIGHT/2-this.qyrem.height/2;
         addChild(this.qyrem);
         this.duzo=new Lufub().setSize(22).setColor(_loc7_);
         this.duzo.setStringBuilder(new Sire().setParams(GuildUtil.kyrehorek(param3)));
         this.duzo.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.duzo.setVerticalAlign(Lufub.MIDDLE);
         this.duzo.x=580;
         this.duzo.y=HEIGHT/2;
         addChild(this.duzo);
         if(GuildUtil.virywepub(param6,param3))
         {
            this.vyjali=this.lofila(true);
            this.vypeh(this.vyjali);
            this.vyjali.addEventListener(MouseEvent.CLICK,this.bijys);
            this.vyjali.x=670+6;
            this.vyjali.y=HEIGHT/2;
            addChild(this.vyjali);
         }
         if(GuildUtil.figihap(param6,param3))
         {
            this.hek=this.lofila(false);
            this.vypeh(this.hek);
            this.hek.addEventListener(MouseEvent.CLICK,this.najet);
            this.hek.x=700+6;
            this.hek.y=HEIGHT/2;
            addChild(this.hek);
         }
         if(GuildUtil.gizar(param6,param3))
         {
            this.pafoledor=new DeleteXGraphic();
            this.vypeh(this.pafoledor);
            this.pafoledor.addEventListener(MouseEvent.CLICK,this.citi);
            this.pafoledor.x=730;
            this.pafoledor.y=HEIGHT/2-this.pafoledor.height/2;
            addChild(this.pafoledor);
         }
         return;
      }

      public static const WIDTH:int = 756;

      public static const HEIGHT:int = 32;

      protected static const sujy:ColorTransform = new ColorTransform(1,220/255,133/255);

      private var name_:String;

      private var nefecuqo:int;

      private var penerylyw:Lufub;

      private var nameText_:Lufub;

      private var cowuqoge:Lufub;

      private var qiburat:Bitmap;

      private var qyrem:Bitmap;

      private var duzo:Lufub;

      private var vyjali:Sprite;

      private var hek:Sprite;

      private var pafoledor:Sprite;

      private function lofila(param1:Boolean) : Sprite {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sprite = new Sprite();
         var _loc3_:Graphics = _loc2_.graphics;
         _loc3_.beginFill(16777215);
         _loc3_.moveTo(-8,-6);
         _loc3_.lineTo(8,-6);
         _loc3_.lineTo(0,6);
         _loc3_.lineTo(-8,-6);
         if(param1)
         {
            _loc2_.rotation=180;
         }
         return _loc2_;
      }

      private function vypeh(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.addEventListener(MouseEvent.MOUSE_OVER,this.copajuje);
         param1.addEventListener(MouseEvent.ROLL_OUT,this.qehewukoc);
         return;
      }

      private function copajuje(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform=sujy;
         return;
      }

      private function qehewukoc(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.transform.colorTransform=MoreColorUtil.identity;
         return;
      }

      private function bijys(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = GuildUtil.kyrehorek(GuildUtil.celojed(this.nefecuqo));
         var _loc3_:Dialog = new Dialog("","",I18nKeys.bejaluw,I18nKeys.qesa,"/promote");
         _loc3_.bipefybo(I18nKeys.lem,
            {
               name:this.name_,
               rank:_loc2_
            }
         );
         _loc3_.vynuqe(new Sire().setParams(I18nKeys.dohyly,{name:this.name_}));
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.hyje);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.pugig);
         Giq.kid().getInstance(Hez).dispatch(_loc3_);
         return;
      }

      private function pugig(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Tejyla(Tejyla.SET_RANK,this.name_,GuildUtil.celojed(this.nefecuqo)));
         Giq.kid().getInstance(Cowymute).dispatch();
         return;
      }

      private function najet(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = GuildUtil.kyrehorek(GuildUtil.mose(this.nefecuqo));
         var _loc3_:Dialog = new Dialog("","",I18nKeys.quviko,I18nKeys.tabi,"/demote");
         _loc3_.bipefybo(I18nKeys.memoliqud,
            {
               name:this.name_,
               rank:_loc2_
            }
         );
         _loc3_.vynuqe(new Sire().setParams(I18nKeys.gen,{name:this.name_}));
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.hyje);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.jomutaki);
         Giq.kid().getInstance(Hez).dispatch(_loc3_);
         return;
      }

      private function jomutaki(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Tejyla(Tejyla.SET_RANK,this.name_,GuildUtil.mose(this.nefecuqo)));
         Giq.kid().getInstance(Cowymute).dispatch();
         return;
      }

      private function citi(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dialog = new Dialog("","",I18nKeys.lizizezu,I18nKeys.renisy,"/removeFromGuild");
         _loc2_.bipefybo(I18nKeys.weboboly,{name:this.name_});
         _loc2_.vynuqe(new Sire().setParams(I18nKeys.tolar,{name:this.name_}));
         _loc2_.addEventListener(Dialog.LEFT_BUTTON,this.hyje);
         _loc2_.addEventListener(Dialog.RIGHT_BUTTON,this.dacupa);
         Giq.kid().getInstance(Hez).dispatch(_loc2_);
         return;
      }

      private function dacupa(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Giq.kid().getInstance(Cowymute).dispatch();
         dispatchEvent(new Tejyla(Tejyla.REMOVE_MEMBER,this.name_));
         return;
      }

      private function hyje(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Giq.kid().getInstance(Cowymute).dispatch();
         return;
      }
   }

}