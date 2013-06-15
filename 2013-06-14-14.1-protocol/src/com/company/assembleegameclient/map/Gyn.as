package com.company.assembleegameclient.map
{
   import com.company.assembleegameclient.objects.Sep;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import com.company.assembleegameclient.objects.Bedypy;


   public class Gyn extends Object
   {
      public function Gyn(param1:XML) {
         var [OFS2]_loc2_:* = [/OFS]true;
         var [OFS3]_loc3_:* = [/OFS]false;
         this.[OFS14]animate_[/OFS][OFS14]=[/OFS][OFS10]new [/OFS][OFS10]Ryfiseqe[/OFS][OFS10]([/OFS][OFS10])[/OFS];
         [OFS18]super([/OFS][OFS18])[/OFS];
         this.[OFS31]type_[/OFS][OFS31]=[/OFS][OFS28]int[/OFS][OFS28]([/OFS][OFS23]param1[/OFS].[OFS24]@type[/OFS][OFS28])[/OFS];
         this.[OFS45]id_[/OFS][OFS45]=[/OFS][OFS42]String[/OFS][OFS42]([/OFS][OFS37]param1[/OFS].[OFS38]@id[/OFS][OFS42])[/OFS];
         this.[OFS57]wyzaduf[/OFS][OFS57]=[/OFS][OFS49]param1[/OFS].[OFS53]hasOwnProperty[/OFS][OFS53]([/OFS][OFS50]"NoWalk"[/OFS][OFS53])[/OFS];
         if([OFS60]param1[/OFS].[OFS64]hasOwnProperty[/OFS][OFS64]([/OFS][OFS61]"MinDamage"[/OFS][OFS64])[/OFS])
         {
            this.[OFS82]minDamage_[/OFS][OFS82]=[/OFS][OFS79]int[/OFS][OFS79]([/OFS][OFS75]param1[/OFS].[OFS76]MinDamage[/OFS][OFS79])[/OFS];
         }
         if([OFS85]param1[/OFS].[OFS89]hasOwnProperty[/OFS][OFS89]([/OFS][OFS86]"MaxDamage"[/OFS][OFS89])[/OFS])
         {
            this.[OFS108]maxDamage_[/OFS][OFS108]=[/OFS][OFS105]int[/OFS][OFS105]([/OFS][OFS100]param1[/OFS].[OFS101]MaxDamage[/OFS][OFS105])[/OFS];
         }
         this.[OFS120]push_[/OFS][OFS120]=[/OFS][OFS112]param1[/OFS].[OFS116]hasOwnProperty[/OFS][OFS116]([/OFS][OFS113]"Push"[/OFS][OFS116])[/OFS];
         if([OFS123]param1[/OFS].[OFS127]hasOwnProperty[/OFS][OFS127]([/OFS][OFS124]"Animate"[/OFS][OFS127])[/OFS])
         {
            this.[OFS136]animate_[/OFS].[OFS149]gyhujecys[/OFS][OFS149]([/OFS][OFS146]XML[/OFS][OFS146]([/OFS][OFS141]param1[/OFS].[OFS142]Animate[/OFS][OFS146])[/OFS][OFS149])[/OFS];
         }
         if([OFS153]param1[/OFS].[OFS157]hasOwnProperty[/OFS][OFS157]([/OFS][OFS154]"BlendPriority"[/OFS][OFS157])[/OFS])
         {
            this.[OFS175]wid[/OFS][OFS175]=[/OFS][OFS172]int[/OFS][OFS172]([/OFS][OFS168]param1[/OFS].[OFS169]BlendPriority[/OFS][OFS172])[/OFS];
         }
         if([OFS178]param1[/OFS].[OFS182]hasOwnProperty[/OFS][OFS182]([/OFS][OFS179]"CompositePriority"[/OFS][OFS182])[/OFS])
         {
            this.[OFS201]leg[/OFS][OFS201]=[/OFS][OFS198]int[/OFS][OFS198]([/OFS][OFS193]param1[/OFS].[OFS194]CompositePriority[/OFS][OFS198])[/OFS];
         }
         if([OFS204]param1[/OFS].[OFS208]hasOwnProperty[/OFS][OFS208]([/OFS][OFS205]"Speed"[/OFS][OFS208])[/OFS])
         {
            this.[OFS227]speed_[/OFS][OFS227]=[/OFS][OFS224]Number[/OFS][OFS224]([/OFS][OFS219]param1[/OFS].[OFS220]Speed[/OFS][OFS224])[/OFS];
         }
         this.[OFS260]dojynob[/OFS][OFS260]=[/OFS][OFS231]param1[/OFS].[OFS235]hasOwnProperty[/OFS][OFS235]([/OFS][OFS232]"XOffset"[/OFS][OFS235])[/OFS]?[OFS249]Number[/OFS][OFS249]([/OFS][OFS245]param1[/OFS].[OFS246]XOffset[/OFS][OFS249])[/OFS]:[OFS257]0[/OFS];
         this.[OFS293]niz[/OFS][OFS293]=[/OFS][OFS264]param1[/OFS].[OFS268]hasOwnProperty[/OFS][OFS268]([/OFS][OFS265]"YOffset"[/OFS][OFS268])[/OFS]?[OFS282]Number[/OFS][OFS282]([/OFS][OFS278]param1[/OFS].[OFS279]YOffset[/OFS][OFS282])[/OFS]:[OFS290]0[/OFS];
         this.[OFS305]push_[/OFS][OFS305]=[/OFS][OFS297]param1[/OFS].[OFS301]hasOwnProperty[/OFS][OFS301]([/OFS][OFS298]"Push"[/OFS][OFS301])[/OFS];
         this.[OFS317]sink_[/OFS][OFS317]=[/OFS][OFS309]param1[/OFS].[OFS313]hasOwnProperty[/OFS][OFS313]([/OFS][OFS310]"Sink"[/OFS][OFS313])[/OFS];
         this.[OFS329]pycaciw[/OFS][OFS329]=[/OFS][OFS321]param1[/OFS].[OFS325]hasOwnProperty[/OFS][OFS325]([/OFS][OFS322]"Sinking"[/OFS][OFS325])[/OFS];
         this.[OFS341]cubapaq[/OFS][OFS341]=[/OFS][OFS333]param1[/OFS].[OFS337]hasOwnProperty[/OFS][OFS337]([/OFS][OFS334]"RandomOffset"[/OFS][OFS337])[/OFS];
         if([OFS344]param1[/OFS].[OFS348]hasOwnProperty[/OFS][OFS348]([/OFS][OFS345]"Edge"[/OFS][OFS348])[/OFS])
         {
            this.[OFS358]wyjedakad[/OFS][OFS358]=[/OFS]true;
            this.[OFS379]dajyf[/OFS][OFS379]=[/OFS][OFS375]new [/OFS][OFS375]Bedypy[/OFS][OFS375]([/OFS][OFS372]XML[/OFS][OFS372]([/OFS][OFS367]param1[/OFS].[OFS368]Edge[/OFS][OFS372])[/OFS][OFS375])[/OFS];
            if([OFS382]param1[/OFS].[OFS386]hasOwnProperty[/OFS][OFS386]([/OFS][OFS383]"Corner"[/OFS][OFS386])[/OFS])
            {
               this.[OFS412]tera[/OFS][OFS412]=[/OFS][OFS408]new [/OFS][OFS408]Bedypy[/OFS][OFS408]([/OFS][OFS405]XML[/OFS][OFS405]([/OFS][OFS400]param1[/OFS].[OFS401]Corner[/OFS][OFS405])[/OFS][OFS408])[/OFS];
            }
            if([OFS415]param1[/OFS].[OFS419]hasOwnProperty[/OFS][OFS419]([/OFS][OFS416]"InnerCorner"[/OFS][OFS419])[/OFS])
            {
               this.[OFS444]bidaqaw[/OFS][OFS444]=[/OFS][OFS440]new [/OFS][OFS440]Bedypy[/OFS][OFS440]([/OFS][OFS437]XML[/OFS][OFS437]([/OFS][OFS433]param1[/OFS].[OFS434]InnerCorner[/OFS][OFS437])[/OFS][OFS440])[/OFS];
            }
         }
         this.[OFS457]tihasyn[/OFS][OFS457]=[/OFS][OFS448]param1[/OFS].[OFS453]hasOwnProperty[/OFS][OFS453]([/OFS][OFS449]"SameTypeEdgeMode"[/OFS][OFS453])[/OFS];
         if([OFS460]param1[/OFS].[OFS464]hasOwnProperty[/OFS][OFS464]([/OFS][OFS461]"Top"[/OFS][OFS464])[/OFS])
         {
            this.[OFS490]rad[/OFS][OFS490]=[/OFS][OFS486]new [/OFS][OFS486]Bedypy[/OFS][OFS486]([/OFS][OFS483]XML[/OFS][OFS483]([/OFS][OFS478]param1[/OFS].[OFS479]Top[/OFS][OFS483])[/OFS][OFS486])[/OFS];
            this.[OFS501]jewiwajaq[/OFS][OFS501]=[/OFS][OFS497]new [/OFS][OFS497]Ryfiseqe[/OFS][OFS497]([/OFS][OFS497])[/OFS];
            if([OFS504]param1[/OFS].[OFS508]hasOwnProperty[/OFS][OFS508]([/OFS][OFS505]"TopAnimate"[/OFS][OFS508])[/OFS])
            {
               this.[OFS517]jewiwajaq[/OFS].[OFS530]gyhujecys[/OFS][OFS530]([/OFS][OFS527]XML[/OFS][OFS527]([/OFS][OFS522]param1[/OFS].[OFS523]TopAnimate[/OFS][OFS527])[/OFS][OFS530])[/OFS];
            }
         }
         [OFS534]return[/OFS];
      }

      public var type_:int;

      public var id_:String;

      public var wyzaduf:Boolean = true;

      public var minDamage_:int = 0;

      public var maxDamage_:int = 0;

      public var animate_:Ryfiseqe;

      public var wid:int = -1;

      public var leg:int = 0;

      public var speed_:Number = 1.0;

      public var dojynob:Number = 0;

      public var niz:Number = 0;

      public var push_:Boolean = false;

      public var sink_:Boolean = false;

      public var pycaciw:Boolean = false;

      public var cubapaq:Boolean = false;

      public var wyjedakad:Boolean = false;

      private var dajyf:Sep = null;

      private var tera:Sep = null;

      private var bidaqaw:Sep = null;

      private var cicytuse:Vector.<BitmapData> = null;

      private var fusuh:Vector.<BitmapData> = null;

      public var tihasyn:Boolean = false;

      public var rad:Sep = null;

      public var jewiwajaq:Ryfiseqe = null;

      public function lypegyfu() : Vector.<BitmapData> {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.wyjedakad||!(this.cicytuse==null))
         {
            return this.cicytuse;
         }
         this.cicytuse=new Vector.<BitmapData>(9);
         this.cicytuse[3]=this.dajyf.getTexture(0);
         this.cicytuse[1]=BitmapUtil.nocoqiz(this.cicytuse[3],1);
         this.cicytuse[5]=BitmapUtil.nocoqiz(this.cicytuse[3],2);
         this.cicytuse[7]=BitmapUtil.nocoqiz(this.cicytuse[3],3);
         if(this.tera!=null)
         {
            this.cicytuse[0]=this.tera.getTexture(0);
            this.cicytuse[2]=BitmapUtil.nocoqiz(this.cicytuse[0],1);
            this.cicytuse[8]=BitmapUtil.nocoqiz(this.cicytuse[0],2);
            this.cicytuse[6]=BitmapUtil.nocoqiz(this.cicytuse[0],3);
         }
         return this.cicytuse;
      }

      public function wytiv() : Vector.<BitmapData> {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.bidaqaw==null||!(this.fusuh==null))
         {
            return this.fusuh;
         }
         this.fusuh=this.cicytuse.concat();
         this.fusuh[0]=this.bidaqaw.getTexture(0);
         this.fusuh[2]=BitmapUtil.nocoqiz(this.fusuh[0],1);
         this.fusuh[8]=BitmapUtil.nocoqiz(this.fusuh[0],2);
         this.fusuh[6]=BitmapUtil.nocoqiz(this.fusuh[0],3);
         return this.fusuh;
      }
   }

}