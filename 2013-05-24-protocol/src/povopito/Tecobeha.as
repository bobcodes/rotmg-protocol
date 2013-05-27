package povopito
{
   import flash.display.Bitmap;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Luvu;
   import hotewa.Baqifa;
   import com.company.assembleegameclient.appengine.Kewisesa;
   import com.company.assembleegameclient.appengine.Lycuhej;
   import nec.AppendingLineBuilder;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Jutot;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import com.company.assembleegameclient.util.Biloqu;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Zet;
   import flash.geom.ColorTransform;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import kabam.rotmg.assets.services.Rogih;
   import com.company.assembleegameclient.util.Wagoq;


   public class Tecobeha extends Ryduwi
   {
      public function Tecobeha(param1:XML, param2:Baqifa, param3:Lycuhej) {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc8_:AppendingLineBuilder = null;
         var _loc9_:XML = null;
         var _loc10_:BitmapData = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         super(3552822,1,16777215,1);
         var _loc4_:Zuwomuguk = Jutot.fyh(String(param1.AnimatedTexture.File),int(param1.AnimatedTexture.Index));
         var _loc5_:Biloqu = _loc4_.imageFromDir(Zuwomuguk.RIGHT,Zuwomuguk.pazyladar,0);
         var _loc6_:int = 4/_loc5_.width()*100;
         var _loc7_:BitmapData = TextureRedrawer.redraw(_loc5_.image_,_loc6_,true,0,0);
         this.tajoc=this.zen(param2,param1);
         if(this.tajoc)
         {
            _loc7_=Zet.juwyc(_loc7_,new ColorTransform(0,0,0,0.5,0,0,0,0));
         }
         this.sypewe=new Bitmap();
         this.sypewe.bitmapData=_loc7_;
         this.sypewe.x=-4;
         this.sypewe.y=-4;
         addChild(this.sypewe);
         this.nameText_=new Lufub().setSize(13).setColor(11776947);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Sire().setParams(param1.DisplayId));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         jiguvovu.push(this.nameText_.textChanged);
         addChild(this.nameText_);
         this.pafyzeku=new Lufub().setSize(13).setColor(11776947).setWordWrap(true).setMultiLine(true).setTextWidth(174);
         this.pafyzeku.setStringBuilder(new Sire().setParams(param1.Description));
         this.pafyzeku.filters=[new DropShadowFilter(0,0,0)];
         jiguvovu.push(this.pafyzeku.textChanged);
         addChild(this.pafyzeku);
         this.kity=new Luvu(100,1842204);
         addChild(this.kity);
         if(this.tajoc)
         {
            this.bape=new Lufub().setSize(13).setColor(11776947).setTextWidth(174).setBold(true);
            this.bape.setStringBuilder(new Sire().setParams(I18nKeys.goqabafaw));
            this.bape.filters=[new DropShadowFilter(0,0,0)];
            jiguvovu.push(this.bape.textChanged);
            addChild(this.bape);
            this.unlockText_=new Lufub().setSize(13).setColor(16549442).setTextWidth(174).setWordWrap(false).setMultiLine(true);
            _loc8_=new AppendingLineBuilder();
            for each (_loc9_ in param1.UnlockLevel)
            {
               _loc11_=ObjectLibrary.tumu[_loc9_.toString()];
               _loc12_=int(_loc9_.@level);
               if(param2.pilinupuh(_loc11_)<int(_loc9_.@level))
               {
                  _loc8_.pushParams(I18nKeys.byzocu,
                     {
                        unlockLevel:_loc12_,
                        typeToDisplay:ObjectLibrary.fajocyd[_loc11_]
                     }
                  );
               }
            }
            this.unlockText_.setStringBuilder(_loc8_);
            this.unlockText_.filters=[new DropShadowFilter(0,0,0)];
            jiguvovu.push(this.unlockText_.textChanged);
            addChild(this.unlockText_);
            this.costText_=new Lufub().setSize(13).setColor(65280);
            this.costText_.setStringBuilder(new Sire().setParams(I18nKeys.siwezeqal,{unlockCost:param1.UnlockCost}));
            this.costText_.filters=[new DropShadowFilter(0,0,0)];
            jiguvovu.push(this.costText_.textChanged);
            addChild(this.costText_);
            _loc10_=Rogih.makeCoin();
            this.qanakeci=new Bitmap(_loc10_);
            addChild(this.qanakeci);
         }
         else
         {
            _loc13_=param3==null?0:param3.numStars();
            this.bestLevel_=new Lufub().setSize(14).setColor(6206769).setMultiLine(true);
            this.bestLevel_.setStringBuilder(new Sire().setParams(I18nKeys.lunese,
               {
                  numStars:_loc13_,
                  bestLevel:param3!=null?param3.bestLevel():0,
                  fame:param3!=null?param3.gat():0
               }
            ));
            this.bestLevel_.filters=[new DropShadowFilter(0,0,0)];
            jiguvovu.push(this.bestLevel_.textChanged);
            addChild(this.bestLevel_);
            _loc14_=Wagoq.nextStarFame(param3==null?0:param3.gat(),0);
            if(_loc14_>0)
            {
               this.nextClassQuest_=new Lufub().setSize(13).setColor(16549442).setTextWidth(160).setMultiLine(true).setWordWrap(true);
               this.nextClassQuest_.setStringBuilder(new Sire().setParams(I18nKeys.ficaqiw,
                  {
                     nextStarFame:_loc14_,
                     typeToDisplay:param1.DisplayId
                  }
               ));
               this.nextClassQuest_.filters=[new DropShadowFilter(0,0,0)];
               jiguvovu.push(this.nextClassQuest_.textChanged);
               addChild(this.nextClassQuest_);
            }
         }
         return;
      }

      private var sypewe:Bitmap;

      private var nameText_:Lufub;

      private var pafyzeku:Lufub;

      private var kity:Luvu;

      private var bestLevel_:Lufub;

      private var bape:Lufub;

      private var unlockText_:Lufub;

      private var nextClassQuest_:Lufub;

      private var costText_:Lufub;

      private var qanakeci:Bitmap;

      private var tajoc:Boolean;

      override protected function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nameText_.x=32;
         this.nameText_.y=6;
         this.pafyzeku.x=8;
         this.pafyzeku.y=40;
         this.kity.x=6;
         this.kity.y=height;
         if(this.tajoc)
         {
            this.bape.x=8;
            this.bape.y=height-2;
            this.unlockText_.x=12;
            this.unlockText_.y=height-4;
            this.costText_.x=12;
            this.costText_.y=height-4;
            this.qanakeci.y=this.costText_.y-2;
            this.qanakeci.x=this.costText_.x+this.costText_.getBounds(this.costText_).width+4;
         }
         else
         {
            this.bestLevel_.x=8;
            this.bestLevel_.y=height-2;
            if(this.nextClassQuest_)
            {
               this.nextClassQuest_.x=8;
               this.nextClassQuest_.y=height-2;
            }
         }
         this.draw();
         position();
         return;
      }

      private function zen(param1:Baqifa, param2:XML) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Boolean = param1.kupakyjij(String(param2.@id),Kewisesa.pisomykir);
         var _loc4_:Boolean = param1.komopiwyv(int(param2.@type));
         return !_loc3_&&!_loc4_;
      }

      override public function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kity.jum(width-10,1842204);
         super.draw();
         return;
      }
   }

}