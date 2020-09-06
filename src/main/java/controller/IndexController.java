package controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexController extends Controller {
  
  public IndexController(ServletContext context, HttpServletRequest request, HttpServletResponse response) {
    super(context, request, response);
  }

  @Override
  public void indexAction() {
    
  }

  @Override
  public void showAction() {

  }

  @Override
  public void newAction() {
 
  }
  
  @Override
  public void editAction() {
    
  }

  @Override
  public void createAction() {

  }

  @Override
  public void updateAction() {

  }

  @Override
  public void deleteAction() {

  }
}
