		<img alt="logout" src="${path}/img/register.png">
		<form name="joinfm" action="../main.jsp">
			<table>
				<tr>
					<td class="td1">
						<label for="id">아이디</label>
					</td>
					<td class="td2">
						<input type="text" name="id" id="id" maxlength="50" size="20"  placeholder="아이디">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="pw">비밀번호</label>
					</td>
					<td class="td2">
						<input type="password" name="pw" id="pw" maxlength="50" size="10">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="pw">비밀번호확인</label>
					</td>
					<td class="td2">
						<input type="password" name="pwc" id="pwc" maxlength="50" size="10">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="pw">이름</label>
					</td>
					<td class="td2">
						<input type="text" name="name" id="name" maxlength="50" size="10">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="pw">성별</label>
					</td>
					<td class="td2">
						<input type="radio" name="sex" id="m">남
						<input type="radio" name="sex" id="w">여
					</td>
				</tr>
		  <tr>
            <td>생년월일 :</td>
            <td>
               <select required="required" name="mbirth1">
                  <c:forEach begin="1980" end="2015" var="y">
                     <option value="${y }">${y }</option>
                  </c:forEach>
               </select>
               <select required="required" name="mbirth2" >
                  <c:forEach begin="1" end="12" var="m">
                     <option value="${m }">${m }</option>
                  </c:forEach>
               </select>
               <select required="required" name="mbirth3">
                  <c:forEach begin="1" end="31" var="d">
                     <option value="${d }">${d }</option>
                  </c:forEach>
               </select>
            </td>
         </tr>
				<tr>
					<td class="td1">
						<label for="email">이메일</label>
					</td>
					<td class="td2">
						<input type="text" name="email" id="email" maxlength="50" size="25">
					</td>
				</tr>
			<tr>
					<td class="td1">
						<label>휴대폰 번호</label>
					</td>
					<td class="td2">
						<select name="tel1">
							<option value="skt">skt</option>
							<option value="lg">lg</option>
							<option value="kt">kt</option>
						</select>
						<select name="tel1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="019">019</option>
							<option value="016">016</option>
						</select>-
						<input type="text" name="tel2" size="4" maxlength="4">-
						<input type="text" name="tel3" size="4" maxlength="4">
					</td>
				</tr>
					
				
				<tr>
					<td class="td1">
						<label>우편번호</label>
					</td>
					<td class="td2">
						<input type="text" name="postcode" size="5" readonly="readonly" onclick="searchaddr()">
						<input type="button" value="검색" onclick="searchaddr()">
					</td>
				</tr>
				<tr>
					<td class="td1" rowspan="2">
						<label>주소</label>
					</td>
					<td>
						<input type="text" name="default_address" readonly="readonly" size="35">
					</td>
				</tr>
				<tr>
					<td class="td2">
						<input type="text" name="detail_address" readonly="readonly" size="35">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="job">주소</label>
					</td>
					<td class="td2">
						<input type="text" name="job" id="job" maxlength="50" size="10">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="interst">관심사</label>
					</td>
					<td class="td2">
						<input type="text" name="interst" id="interst" maxlength="50" size="10">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="division">부서</label>
					</td>
					<td class="td2">
						<input type="text" name="division" id="division" maxlength="50" size="10">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="joinGrade">직급</label>
					</td>
					<td class="td2">
						<input type="text" name="joinGrade" id="joinGrade" maxlength="50" size="10">
					</td>
				</tr>
				<tr>
					<td class="td1">
						<label for="joinPay">지불방법</label>
					</td>
					<td class="td2">
						<input type="text" name="joinPay" id="joinPay" maxlength="50" size="10">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="image" id="join" src="../img/registerbt.gif">
					</td>
				</tr>
			</table>
		</form>
