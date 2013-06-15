package qifatubam
{
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.utils.ByteArray;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   import zipirytab.Console;
   import zipirytab.Cc;


   public class Revikitob extends Viq
   {
      public function Revikitob(param1:Console) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }



      public function explode(param1:Object, param2:int=3, param3:int=9) : String {
         var [OFS3]_loc15_:* = [/OFS]false;
         var [OFS5]_loc16_:* = [/OFS]true;
         var [OFS12]_loc6_:XMLList = [/OFS][OFS9]null[/OFS];
         var [OFS16]_loc7_:String = [/OFS][OFS14]null[/OFS];
         var [OFS21]_loc9_:XML = [/OFS][OFS18]null[/OFS];
         var [OFS26]_loc10_:XML = [/OFS][OFS23]null[/OFS];
         var [OFS30]_loc11_:String = [/OFS][OFS28]null[/OFS];
         var [OFS34]_loc4_:* = [/OFS][OFS33]typeof [/OFS][OFS32]param1[/OFS];
         if([OFS36]param1[/OFS][OFS38]==[/OFS][OFS37]null[/OFS])
         {
            [OFS53]return [/OFS][OFS42]"<p-2>"[/OFS][OFS47]+[/OFS][OFS46]param1[/OFS][OFS52]+[/OFS][OFS48]"</p-2>"[/OFS];
         }
         if([OFS54]param1[/OFS][OFS57] is [/OFS][OFS55]String[/OFS])
         {
            [OFS81]return [/OFS][OFS62]"\""[/OFS][OFS76]+[/OFS][OFS65]Babydel[/OFS].[OFS72]jopawulu[/OFS][OFS72]([/OFS][OFS68]param1[/OFS][OFS71] as [/OFS][OFS69]String[/OFS][OFS72])[/OFS][OFS80]+[/OFS][OFS77]"\""[/OFS];
         }
         if([OFS88]![/OFS]([OFS82]_loc4_[/OFS][OFS87]==[/OFS][OFS84]"object"[/OFS])||[OFS95]param2[/OFS][OFS98]==[/OFS][OFS96]0[/OFS]||[OFS105]param1[/OFS][OFS108] is [/OFS][OFS106]ByteArray[/OFS])
         {
            [OFS124]return [/OFS][OFS113]console[/OFS].[OFS116]refs[/OFS].[OFS120]makeString[/OFS][OFS120]([/OFS][OFS119]param1[/OFS][OFS120])[/OFS];
         }
         if([OFS125]param3[/OFS][OFS128]<[/OFS][OFS126]0[/OFS])
         {
            [OFS134]param3=[/OFS][OFS132]0[/OFS];
         }
         var [OFS145]_loc5_:XML = [/OFS][OFS139]describeType[/OFS][OFS139]([/OFS][OFS138]param1[/OFS][OFS139])[/OFS];
         var [OFS151]_loc8_:Array = [/OFS][OFS147][[/OFS][OFS147]][/OFS];
         [OFS163]_loc6_=[/OFS][OFS153]_loc5_[/OFS][[OFS155]"accessor"[/OFS]];
         for each (_loc9_ in [OFS169]_loc6_[/OFS])
         {
            [OFS193]_loc7_=[/OFS][OFS186]_loc9_[/OFS].[OFS189]@name[/OFS];
            if([OFS195]_loc9_[/OFS].[OFS197]@access[/OFS][OFS204]!=[/OFS][OFS201]"writeonly"[/OFS])
            {
            }
            else
            {
               [OFS246]_loc8_[/OFS].[OFS250]push[/OFS][OFS250]([/OFS][OFS248]_loc7_[/OFS][OFS250])[/OFS];
               continue;
            }
            try
            {
               [OFS208]_loc8_[/OFS].[OFS220]push[/OFS][OFS220]([/OFS]this.[OFS216]fysosewej[/OFS][OFS216]([/OFS][OFS211]param1[/OFS][OFS216],[/OFS][OFS212]_loc7_[/OFS][OFS216],[/OFS][OFS214]param2[/OFS][OFS216],[/OFS][OFS215]param3[/OFS][OFS216])[/OFS][OFS220])[/OFS];
            }
            catch(e:Error)
            {
            }
         }
         [OFS274]_loc6_=[/OFS][OFS264]_loc5_[/OFS][[OFS266]"variable"[/OFS]];
         for each (_loc10_ in [OFS280]_loc6_[/OFS])
         {
            [OFS304]_loc7_=[/OFS][OFS297]_loc10_[/OFS].[OFS300]@name[/OFS];
            [OFS306]_loc8_[/OFS].[OFS318]push[/OFS][OFS318]([/OFS]this.[OFS314]fysosewej[/OFS][OFS314]([/OFS][OFS309]param1[/OFS][OFS314],[/OFS][OFS310]_loc7_[/OFS][OFS314],[/OFS][OFS312]param2[/OFS][OFS314],[/OFS][OFS313]param3[/OFS][OFS314])[/OFS][OFS318])[/OFS];
         }
         try
         {
            for (_loc11_ in [OFS336]param1[/OFS])
            {
               [OFS353]_loc8_[/OFS].[OFS365]push[/OFS][OFS365]([/OFS]this.[OFS361]fysosewej[/OFS][OFS361]([/OFS][OFS356]param1[/OFS][OFS361],[/OFS][OFS357]_loc11_[/OFS][OFS361],[/OFS][OFS359]param2[/OFS][OFS361],[/OFS][OFS360]param3[/OFS][OFS361])[/OFS][OFS365])[/OFS];
            }
         }
         catch(e:Error)
         {
         }
         [OFS454]return [/OFS][OFS398]"<p"[/OFS][OFS402]+[/OFS][OFS401]param3[/OFS][OFS407]+[/OFS][OFS403]">{"[/OFS][OFS416]+[/OFS][OFS408]Babydel[/OFS].[OFS412]lybi[/OFS][OFS412]([/OFS][OFS411]param1[/OFS][OFS412])[/OFS][OFS420]+[/OFS][OFS417]"</p"[/OFS][OFS422]+[/OFS][OFS421]param3[/OFS][OFS426]+[/OFS][OFS423]"> "[/OFS][OFS436]+[/OFS][OFS427]_loc8_[/OFS].[OFS432]join[/OFS][OFS432]([/OFS][OFS429]", "[/OFS][OFS432])[/OFS][OFS440]+[/OFS][OFS437]"<p"[/OFS][OFS442]+[/OFS][OFS441]param3[/OFS][OFS447]+[/OFS][OFS443]">}</p"[/OFS][OFS449]+[/OFS][OFS448]param3[/OFS][OFS453]+[/OFS][OFS450]">"[/OFS];
      }

      private function fysosewej(param1:*, param2:String, param3:int, param4:int) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return param2+":"+this.explode(param1[param2],param3-1,param4-1);
      }

      public function huc(param1:int, param2:int) : String {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc3_:Error = new Error();
         var _loc4_:String = _loc3_.hasOwnProperty("getStackTrace")?_loc3_.getStackTrace():null;
         if(!_loc4_)
         {
            return "";
         }
         var _loc5_:* = "";
         var _loc6_:Array = _loc4_.split(new RegExp("\\n\\sat\\s"));
         var _loc7_:int = _loc6_.length;
         var _loc8_:RegExp = new RegExp("Function|"+getQualifiedClassName(Console)+"|"+getQualifiedClassName(Cc));
         var _loc9_:* = false;
         var _loc10_:* = 2;
         while(_loc10_<_loc7_)
         {
            if(!(_loc6_[_loc10_].search(_loc8_)==0))
            {
               _loc9_=true;
            }
            _loc10_++;
         }
         return _loc5_;
      }
   }

}